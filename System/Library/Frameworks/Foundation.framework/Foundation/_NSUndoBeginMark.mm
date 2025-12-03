@interface _NSUndoBeginMark
- (id)description;
- (id)groupIdentifier;
- (id)userInfo;
- (void)dealloc;
- (void)setGroupIdentifier:(id)identifier;
- (void)setUserInfo:(id)info;
@end

@implementation _NSUndoBeginMark

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSUndoBeginMark;
  [(_NSUndoBeginMark *)&v3 dealloc];
}

- (void)setGroupIdentifier:(id)identifier
{
  groupIdentifier = self->_groupIdentifier;
  self->_groupIdentifier = [identifier copyWithZone:{-[_NSUndoBeginMark zone](self, "zone")}];
}

- (id)groupIdentifier
{
  v2 = self->_groupIdentifier;

  return v2;
}

- (void)setUserInfo:(id)info
{
  userInfo = self->_userInfo;
  self->_userInfo = [info mutableCopyWithZone:{-[_NSUndoBeginMark zone](self, "zone")}];
}

- (id)userInfo
{
  v2 = self->_userInfo;

  return v2;
}

- (id)description
{
  groupIdentifier = self->_groupIdentifier;
  isDiscardable = self->_isDiscardable;
  userInfo = self->_userInfo;
  if (userInfo)
  {
    v5 = [(NSMutableDictionary *)userInfo description];
  }

  else
  {
    v5 = &stru_1EEEFDF90;
  }

  if (groupIdentifier)
  {
    v6 = groupIdentifier;
  }

  else
  {
    v6 = &stru_1EEEFDF90;
  }

  v7 = "";
  if (isDiscardable)
  {
    v7 = "(discardable)";
  }

  return [NSString stringWithFormat:@"beginUndoGrouping %@ %s %@", v6, v7, v5];
}

@end