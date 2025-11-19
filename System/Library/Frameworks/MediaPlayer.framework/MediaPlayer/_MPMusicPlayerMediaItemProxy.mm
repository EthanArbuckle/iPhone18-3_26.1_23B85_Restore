@interface _MPMusicPlayerMediaItemProxy
- (_MPMusicPlayerMediaItemProxy)initWithItemIdentifier:(id)a3 item:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation _MPMusicPlayerMediaItemProxy

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(MPMediaItem *)self->_item methodSignatureForSelector:?];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = _MPMusicPlayerMediaItemProxy;
    v5 = [(_MPMusicPlayerMediaItemProxy *)&v7 methodSignatureForSelector:a3];
  }

  return v5;
}

- (_MPMusicPlayerMediaItemProxy)initWithItemIdentifier:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_storeStrong(&self->_item, a4);
    objc_storeStrong(&self->_itemIdentifier, a3);
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end