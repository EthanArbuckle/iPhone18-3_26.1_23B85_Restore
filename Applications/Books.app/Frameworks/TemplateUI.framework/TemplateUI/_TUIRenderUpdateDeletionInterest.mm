@interface _TUIRenderUpdateDeletionInterest
- (_TUIRenderUpdateDeletionInterest)initWithModels:(id)models tracker:(id)tracker;
- (void)dealloc;
@end

@implementation _TUIRenderUpdateDeletionInterest

- (_TUIRenderUpdateDeletionInterest)initWithModels:(id)models tracker:(id)tracker
{
  modelsCopy = models;
  trackerCopy = tracker;
  v12.receiver = self;
  v12.super_class = _TUIRenderUpdateDeletionInterest;
  v8 = [(_TUIRenderUpdateDeletionInterest *)&v12 init];
  if (v8)
  {
    v9 = [modelsCopy copy];
    models = v8->_models;
    v8->_models = v9;

    objc_storeStrong(&v8->_tracker, tracker);
    [(TUIRenderUpdateArrayTracker *)v8->_tracker incrementInterestInDeletedModels:v8->_models];
  }

  return v8;
}

- (void)dealloc
{
  [(TUIRenderUpdateArrayTracker *)self->_tracker decrementInterestInDeletedModels:self->_models];
  v3.receiver = self;
  v3.super_class = _TUIRenderUpdateDeletionInterest;
  [(_TUIRenderUpdateDeletionInterest *)&v3 dealloc];
}

@end