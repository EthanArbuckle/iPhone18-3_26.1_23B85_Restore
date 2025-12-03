@interface ASFriendListDisplayContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASFriendListDisplayContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  displayMode = self->_displayMode;
  if (displayMode == [equalCopy displayMode])
  {
    displayFilter = self->_displayFilter;
    v7 = displayFilter == [equalCopy displayFilter];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDisplayMode:{-[ASFriendListDisplayContext displayMode](self, "displayMode")}];
  [v4 setDisplayFilter:{-[ASFriendListDisplayContext displayFilter](self, "displayFilter")}];
  return v4;
}

@end