@interface GCSystemButtonService
+ (id)sharedInstance;
- (GCSystemButtonService)init;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GCSystemButtonService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[GCSystemButtonService sharedInstance];
  }

  v3 = sharedInstance_Shared_4;

  return v3;
}

void __39__GCSystemButtonService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(GCSystemButtonService);
  v1 = sharedInstance_Shared_4;
  sharedInstance_Shared_4 = v0;
}

- (GCSystemButtonService)init
{
  v6.receiver = self;
  v6.super_class = GCSystemButtonService;
  v2 = [(GCSystemButtonService *)&v6 init];
  v3 = objc_alloc_init(_GCSystemButtonServiceInternal);
  impl = v2->_impl;
  v2->_impl = v3;

  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"available" options:9 context:0];
  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"localizedName" options:9 context:0];
  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"sfSymbolName" options:9 context:0];
  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"respondingProcessBundleIdentifiers" options:9 context:0];
  return v2;
}

- (void)dealloc
{
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"available" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"localizedName" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"sfSymbolName" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"respondingProcessBundleIdentifiers" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl _invalidate];
  v3.receiver = self;
  v3.super_class = GCSystemButtonService;
  [(GCSystemButtonService *)&v3 dealloc];
}

- (id)description
{
  if ([(GCSystemButtonService *)self isAvailable])
  {
    v3 = MEMORY[0x1E696AEC0];
    localizedName = [(GCSystemButtonService *)self localizedName];
    sfSymbolName = [(GCSystemButtonService *)self sfSymbolName];
    v6 = [v3 stringWithFormat:@"%@ (%@)", localizedName, sfSymbolName];
  }

  else
  {
    v6 = @"Unavailable";
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCSystemButtonService *)self description];
  v7 = [v3 stringWithFormat:@"%@ %p %@", v5, self, v6];;

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (self->_impl == object)
  {
    v11 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F8]];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      [(GCSystemButtonService *)self willChangeValueForKey:pathCopy];
    }

    else
    {
      [(GCSystemButtonService *)self didChangeValueForKey:pathCopy];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GCSystemButtonService;
    [(GCSystemButtonService *)&v13 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

@end