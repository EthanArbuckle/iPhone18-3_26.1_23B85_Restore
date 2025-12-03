@interface SidebarOutlineCellBackgroundModel
- (BOOL)isEqual:(id)equal;
- (SidebarOutlineCellBackgroundModel)initWithStyle:(int64_t)style dropStyle:(int64_t)dropStyle grouping:(int64_t)grouping collectionViewFocused:(BOOL)focused collectionViewProxyFocused:(BOOL)proxyFocused collectionViewHasDropSession:(BOOL)session;
@end

@implementation SidebarOutlineCellBackgroundModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    collectionViewHasDropSession = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    collectionViewHasDropSession = [(SidebarOutlineCellBackgroundModel *)v6 style]== self->_style && [(SidebarOutlineCellBackgroundModel *)v6 dropStyle]== self->_dropStyle && [(SidebarOutlineCellBackgroundModel *)v6 grouping]== self->_grouping && self->_collectionViewFocused == [(SidebarOutlineCellBackgroundModel *)v6 collectionViewFocused]&& self->_collectionViewProxyFocused == [(SidebarOutlineCellBackgroundModel *)v6 collectionViewProxyFocused]&& self->_collectionViewHasDropSession == [(SidebarOutlineCellBackgroundModel *)v6 collectionViewHasDropSession];
  }

  else
  {
    collectionViewHasDropSession = 0;
  }

  return collectionViewHasDropSession;
}

- (SidebarOutlineCellBackgroundModel)initWithStyle:(int64_t)style dropStyle:(int64_t)dropStyle grouping:(int64_t)grouping collectionViewFocused:(BOOL)focused collectionViewProxyFocused:(BOOL)proxyFocused collectionViewHasDropSession:(BOOL)session
{
  v15.receiver = self;
  v15.super_class = SidebarOutlineCellBackgroundModel;
  result = [(SidebarOutlineCellBackgroundModel *)&v15 init];
  if (result)
  {
    result->_style = style;
    result->_dropStyle = dropStyle;
    result->_grouping = grouping;
    result->_collectionViewFocused = focused;
    result->_collectionViewProxyFocused = proxyFocused;
    result->_collectionViewHasDropSession = session;
  }

  return result;
}

@end