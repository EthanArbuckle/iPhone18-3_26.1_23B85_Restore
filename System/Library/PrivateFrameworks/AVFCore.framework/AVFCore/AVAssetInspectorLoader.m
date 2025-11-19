@interface AVAssetInspectorLoader
+ (void)initialize;
- (AVAssetInspectorLoader)init;
- (Class)_classForTrackInspectors;
- (id)_createAVErrorForError:(id)a3 andFigErrorCode:(int)a4;
- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation AVAssetInspectorLoader

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (AVAssetInspectorLoader)init
{
  v4.receiver = self;
  v4.super_class = AVAssetInspectorLoader;
  v2 = [(AVAssetInspectorLoader *)&v4 init];
  if (v2)
  {
    v2->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetInspectorLoader;
  [(AVAssetInspectorLoader *)&v3 dealloc];
}

- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4
{
  v6 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v6);
  return 0;
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  v6 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v6);
}

- (Class)_classForTrackInspectors
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)_createAVErrorForError:(id)a3 andFigErrorCode:(int)a4
{
  v6 = [(AVAssetInspectorLoader *)self URL];
  if (v6)
  {
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v6 forKey:*MEMORY[0x1E696A998]];
  }

  return AVErrorWithNSErrorAndOSStatus(a3, a4, v6);
}

@end