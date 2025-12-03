@interface _TUIFeedCaptureSectionLoader
- (_TUIFeedCaptureSectionLoader)initWithTemplateURL:(id)l uuid:(id)uuid bindings:(id)bindings;
- (id)feedEntry:(id)entry requestDataWithPriority:(float)priority block:(id)block;
- (void)_update;
- (void)updateTemplateURL:(id)l bindings:(id)bindings;
@end

@implementation _TUIFeedCaptureSectionLoader

- (_TUIFeedCaptureSectionLoader)initWithTemplateURL:(id)l uuid:(id)uuid bindings:(id)bindings
{
  lCopy = l;
  uuidCopy = uuid;
  bindingsCopy = bindings;
  v20.receiver = self;
  v20.super_class = _TUIFeedCaptureSectionLoader;
  v11 = [(_TUIFeedCaptureSectionLoader *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v13 = [lCopy copy];
    templateURL = v12->_templateURL;
    v12->_templateURL = v13;

    v15 = [uuidCopy copy];
    uuid = v12->_uuid;
    v12->_uuid = v15;

    v17 = [bindingsCopy copy];
    bindings = v12->_bindings;
    v12->_bindings = v17;
  }

  return v12;
}

- (id)feedEntry:(id)entry requestDataWithPriority:(float)priority block:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v7 = [blockCopy copy];

  replyBlock = self->_replyBlock;
  self->_replyBlock = v7;

  os_unfair_lock_unlock(&self->_lock);
  [(_TUIFeedCaptureSectionLoader *)self _update];
  return 0;
}

- (void)updateTemplateURL:(id)l bindings:(id)bindings
{
  lCopy = l;
  bindingsCopy = bindings;
  templateURL = self->_templateURL;
  self->_templateURL = lCopy;
  v9 = lCopy;

  bindings = self->_bindings;
  self->_bindings = bindingsCopy;

  [(_TUIFeedCaptureSectionLoader *)self _update];
}

- (void)_update
{
  bindings = self->_bindings;
  templateURL = self->_templateURL;
  v9[0] = @"template";
  v9[1] = @"data";
  v5 = &__NSDictionary0__struct;
  if (bindings)
  {
    v5 = bindings;
  }

  v10[0] = templateURL;
  v10[1] = v5;
  v6 = bindings;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_retainBlock(self->_replyBlock);
  os_unfair_lock_unlock(&self->_lock);

  v8[2](v8, 1, v7);
}

@end