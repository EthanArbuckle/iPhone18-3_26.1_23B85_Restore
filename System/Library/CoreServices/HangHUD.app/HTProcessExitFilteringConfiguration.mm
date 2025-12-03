@interface HTProcessExitFilteringConfiguration
+ (id)configurationFromPrefs:(id)prefs;
- (BOOL)isEqual:(id)equal;
- (HTProcessExitFilteringConfiguration)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HTProcessExitFilteringConfiguration

+ (id)configurationFromPrefs:(id)prefs
{
  prefsCopy = prefs;
  areAllProcessTerminationsMonitored = [prefsCopy areAllProcessTerminationsMonitored];
  areCriticalProcessTerminationsMonitored = [prefsCopy areCriticalProcessTerminationsMonitored];
  processTerminationNamesMonitored = [prefsCopy processTerminationNamesMonitored];
  processTerminationReasonsMonitored = [prefsCopy processTerminationReasonsMonitored];
  processTerminationSubReasonsMonitored = [prefsCopy processTerminationSubReasonsMonitored];

  v9 = [HTProcessExitFilteringConfiguration configurationAllowingAllProcesses:areAllProcessTerminationsMonitored criticalProcesses:areCriticalProcessTerminationsMonitored processNames:processTerminationNamesMonitored reasons:processTerminationReasonsMonitored subReasons:processTerminationSubReasonsMonitored];

  return v9;
}

- (HTProcessExitFilteringConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"allowsAllProcesses"];
  v6 = [coderCopy decodeBoolForKey:@"allowsCriticalProcesses"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedProcessNames"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowedReasons"];
  v9 = objc_opt_class();
  v10 = [coderCopy decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"allowedSubReasons"];

  v11 = +[HTProcessExitFilteringConfiguration configurationAllowingAllProcesses:criticalProcesses:processNames:reasons:subReasons:](HTProcessExitFilteringConfiguration, "configurationAllowingAllProcesses:criticalProcesses:processNames:reasons:subReasons:", v5, v6, v7, [v8 unsignedLongLongValue], v10);

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  allowsAllProcesses = self->_allowsAllProcesses;
  coderCopy = coder;
  [coderCopy encodeBool:allowsAllProcesses forKey:@"allowsAllProcesses"];
  [coderCopy encodeBool:self->_allowsCriticalProcesses forKey:@"allowsCriticalProcesses"];
  [coderCopy encodeObject:self->_allowedProcessNames forKey:@"allowedProcessNames"];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_allowedReasons];
  [coderCopy encodeObject:v5 forKey:@"allowedReasons"];

  [coderCopy encodeObject:self->_allowedSubReasons forKey:@"allowedSubReasons"];
}

- (id)description
{
  v2 = @"NO";
  if (self->_allowsAllProcesses)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_allowsCriticalProcesses)
  {
    v2 = @"YES";
  }

  return [NSString stringWithFormat:@"all processes:      %@\ncritical processes: %@\nprocess names:      %@\nreasons:            %llu\nsub-reasons:        %@", v3, v2, self->_allowedProcessNames, self->_allowedReasons, self->_allowedSubReasons];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsAllProcesses = [(HTProcessExitFilteringConfiguration *)self allowsAllProcesses];
      if (allowsAllProcesses == [(HTProcessExitFilteringConfiguration *)v5 allowsAllProcesses]&& (v7 = [(HTProcessExitFilteringConfiguration *)self allowsCriticalProcesses], v7 == [(HTProcessExitFilteringConfiguration *)v5 allowsCriticalProcesses]))
      {
        allowedProcessNames = [(HTProcessExitFilteringConfiguration *)self allowedProcessNames];
        allowedProcessNames2 = [(HTProcessExitFilteringConfiguration *)v5 allowedProcessNames];
        if ([allowedProcessNames isEqual:allowedProcessNames2] && (v11 = -[HTProcessExitFilteringConfiguration allowedReasons](self, "allowedReasons"), v11 == -[HTProcessExitFilteringConfiguration allowedReasons](v5, "allowedReasons")))
        {
          allowedSubReasons = [(HTProcessExitFilteringConfiguration *)self allowedSubReasons];
          allowedSubReasons2 = [(HTProcessExitFilteringConfiguration *)v5 allowedSubReasons];
          v8 = [allowedSubReasons isEqual:allowedSubReasons2];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = (self->_allowsCriticalProcesses ^ self->_allowsAllProcesses) & 1;
  v4 = [(NSArray *)self->_allowedProcessNames hash];
  allowedSubReasons = self->_allowedSubReasons;
  v6 = v4 ^ self->_allowedReasons ^ v3;
  return v6 ^ [(NSDictionary *)allowedSubReasons hash];
}

@end