@interface PKRecognitionSessionObserverWrapper
- (void)recognitionSessionDidUpdateRecognitionResult:(id)a3;
@end

@implementation PKRecognitionSessionObserverWrapper

- (void)recognitionSessionDidUpdateRecognitionResult:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_deactivated);
  if (v5)
  {
    WeakRetained = os_log_create("com.apple.pencilkit", "RecognitionManager");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C7CCA000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Prevented session observer from triggering after deactivation.", v7, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_realObserver);
    [WeakRetained recognitionSessionDidUpdateRecognitionResult:v4];
  }
}

@end