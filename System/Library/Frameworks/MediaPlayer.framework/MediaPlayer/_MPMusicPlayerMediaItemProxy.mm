@interface _MPMusicPlayerMediaItemProxy
- (_MPMusicPlayerMediaItemProxy)initWithItemIdentifier:(id)identifier item:(id)item;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation _MPMusicPlayerMediaItemProxy

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = [(MPMediaItem *)self->_item methodSignatureForSelector:?];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = _MPMusicPlayerMediaItemProxy;
    v5 = [(_MPMusicPlayerMediaItemProxy *)&v7 methodSignatureForSelector:selector];
  }

  return v5;
}

- (_MPMusicPlayerMediaItemProxy)initWithItemIdentifier:(id)identifier item:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  if (itemCopy)
  {
    objc_storeStrong(&self->_item, item);
    objc_storeStrong(&self->_itemIdentifier, identifier);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end