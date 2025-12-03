@interface NetworkMonitor
- (BOOL)isConnected;
- (BOOL)isConstrained;
- (BOOL)isExpensive;
- (BOOL)isExpensiveOrCellular;
- (int64_t)interfaceType;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NetworkMonitor

- (void)dealloc
{
  [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path"];
  notify_cancel(self->_emulationToken);
  self->_emulationToken = -1;
  v3.receiver = self;
  v3.super_class = NetworkMonitor;
  [(NetworkMonitor *)&v3 dealloc];
}

- (BOOL)isConnected
{
  os_unfair_lock_lock(&self->_lock);
  connected = self->_connected;
  os_unfair_lock_unlock(&self->_lock);
  return connected;
}

- (BOOL)isConstrained
{
  os_unfair_lock_lock(&self->_lock);
  constrained = self->_constrained;
  if (self->_emulation && os_variant_has_internal_content())
  {
    emulation = self->_emulation;
    if (emulation)
    {
      constrained = emulation->_isConstrained;
    }

    else
    {
      constrained = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return constrained;
}

- (BOOL)isExpensive
{
  os_unfair_lock_lock(&self->_lock);
  expensive = self->_expensive;
  if (self->_emulation && os_variant_has_internal_content())
  {
    emulation = self->_emulation;
    if (emulation)
    {
      expensive = emulation->_isExpensive;
    }

    else
    {
      expensive = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return expensive;
}

- (BOOL)isExpensiveOrCellular
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_expensive || self->_interfaceType == 2;
  if (self->_emulation && os_variant_has_internal_content())
  {
    emulation = self->_emulation;
    if (emulation)
    {
      v3 = emulation->_isExpensive || emulation->_interfaceType == 2;
    }

    else
    {
      v3 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)interfaceType
{
  os_unfair_lock_lock(&self->_lock);
  interfaceType = self->_interfaceType;
  if (self->_emulation && os_variant_has_internal_content())
  {
    emulation = self->_emulation;
    if (emulation)
    {
      interfaceType = emulation->_interfaceType;
    }

    else
    {
      interfaceType = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return interfaceType;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_pathEvaluator == objectCopy && [pathCopy isEqualToString:@"path"])
  {
    v11 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if (v11)
    {
      os_unfair_lock_lock(&self->_lock);
      path = [(NWPathEvaluator *)self->_pathEvaluator path];
      v13 = sub_100227F48(self);
      if (([path status] | 2) == 3)
      {
        self->_connected = 1;
        self->_expensive = [path isExpensive];
        self->_constrained = [path isConstrained];
        v14 = sub_1002B2260(path);
      }

      else
      {
        v14 = 0;
        *&self->_connected = 0;
        self->_expensive = 0;
      }

      self->_interfaceType = v14;
      v15 = sub_100227F48(self);
      if (([v13 isEqual:v15] & 1) == 0)
      {
        connected = self->_connected;
        v17 = ASDLogHandleForCategory();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (connected)
        {
          if (v18)
          {
            expensive = self->_expensive;
            constrained = self->_constrained;
            interfaceType = self->_interfaceType;
            if (interfaceType >= 5)
            {
              v23 = self->_constrained;
              interfaceType = [[NSString alloc] initWithFormat:@"unknown (%ld)", interfaceType];
              constrained = v23;
            }

            else
            {
              interfaceType = off_10051DDF8[interfaceType];
            }

            *buf = 67109634;
            v26 = expensive;
            v27 = 1024;
            v28 = constrained;
            v29 = 2114;
            v30 = interfaceType;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Network] Network available (expensive = %{BOOL}d, constrained = %{BOOL}d, interface = %{public}@)", buf, 0x18u);
          }
        }

        else if (v18)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Network] Network unavailable", buf, 2u);
        }

        sub_100227E58(self);
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

@end