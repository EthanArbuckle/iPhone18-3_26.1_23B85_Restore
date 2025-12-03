@interface ATXRelevantShortcutsEvent
- (ATXRelevantShortcutsEvent)initWithBundleID:(id)d relevantShortcut:(id)shortcut;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXRelevantShortcutsEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXRelevantShortcutsEvent

- (ATXRelevantShortcutsEvent)initWithBundleID:(id)d relevantShortcut:(id)shortcut
{
  dCopy = d;
  shortcutCopy = shortcut;
  v12.receiver = self;
  v12.super_class = ATXRelevantShortcutsEvent;
  v8 = [(ATXRelevantShortcutsEvent *)&v12 init];
  if (v8)
  {
    v9 = [dCopy copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    objc_storeStrong(&v8->_relevantShortcut, shortcut);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXRelevantShortcutsEvent *)self isEqualToATXRelevantShortcutsEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXRelevantShortcutsEvent:(id)event
{
  eventCopy = event;
  v5 = self->_bundleID;
  v6 = v5;
  if (v5 == eventCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_relevantShortcut;
  v10 = v9;
  if (v9 == eventCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(INRelevantShortcut *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (unint64_t)hash
{
  bundleID = [(ATXRelevantShortcutsEvent *)self bundleID];
  v4 = [bundleID hash];

  relevantShortcut = [(ATXRelevantShortcutsEvent *)self relevantShortcut];
  v6 = [relevantShortcut hash] - v4 + 32 * v4;

  return v6;
}

@end