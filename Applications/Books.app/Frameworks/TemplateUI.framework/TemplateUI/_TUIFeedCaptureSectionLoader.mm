@interface _TUIFeedCaptureSectionLoader
- (_TUIFeedCaptureSectionLoader)initWithTemplateURL:(id)a3 uuid:(id)a4 bindings:(id)a5;
- (id)feedEntry:(id)a3 requestDataWithPriority:(float)a4 block:(id)a5;
- (void)_update;
- (void)updateTemplateURL:(id)a3 bindings:(id)a4;
@end

@implementation _TUIFeedCaptureSectionLoader

- (_TUIFeedCaptureSectionLoader)initWithTemplateURL:(id)a3 uuid:(id)a4 bindings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _TUIFeedCaptureSectionLoader;
  v11 = [(_TUIFeedCaptureSectionLoader *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v13 = [v8 copy];
    templateURL = v12->_templateURL;
    v12->_templateURL = v13;

    v15 = [v9 copy];
    uuid = v12->_uuid;
    v12->_uuid = v15;

    v17 = [v10 copy];
    bindings = v12->_bindings;
    v12->_bindings = v17;
  }

  return v12;
}

- (id)feedEntry:(id)a3 requestDataWithPriority:(float)a4 block:(id)a5
{
  v6 = a5;
  os_unfair_lock_lock(&self->_lock);
  v7 = [v6 copy];

  replyBlock = self->_replyBlock;
  self->_replyBlock = v7;

  os_unfair_lock_unlock(&self->_lock);
  [(_TUIFeedCaptureSectionLoader *)self _update];
  return 0;
}

- (void)updateTemplateURL:(id)a3 bindings:(id)a4
{
  v6 = a3;
  v7 = a4;
  templateURL = self->_templateURL;
  self->_templateURL = v6;
  v9 = v6;

  bindings = self->_bindings;
  self->_bindings = v7;

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