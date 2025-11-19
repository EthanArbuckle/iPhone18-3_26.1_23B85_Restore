@interface ASFriendListDisplayContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASFriendListDisplayContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  displayMode = self->_displayMode;
  if (displayMode == [v4 displayMode])
  {
    displayFilter = self->_displayFilter;
    v7 = displayFilter == [v4 displayFilter];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDisplayMode:{-[ASFriendListDisplayContext displayMode](self, "displayMode")}];
  [v4 setDisplayFilter:{-[ASFriendListDisplayContext displayFilter](self, "displayFilter")}];
  return v4;
}

@end