@interface EARLanguageDetector
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)runLanguageDetectionWithResultStream:(id)a3 samplingRate:(unint64_t)a4 reply:(id)a5;
@end

@implementation EARLanguageDetector

- (void)runLanguageDetectionWithResultStream:(id)a3 samplingRate:(unint64_t)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_100011C64(v9, a4, v10, v8);
  _Block_release(v8);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100011F58(v6, v7);

  return v9;
}

@end