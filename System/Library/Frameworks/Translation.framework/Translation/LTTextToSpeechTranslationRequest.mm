@interface LTTextToSpeechTranslationRequest
@end

@implementation LTTextToSpeechTranslationRequest

void __71___LTTextToSpeechTranslationRequest__startTranslationWithService_done___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [a1[5] copy];
    v4 = *(v8 + 15);
    *(v8 + 15) = v3;

    objc_storeStrong(v8 + 16, a1[4]);
    v5 = *(v8 + 16);
    v6 = [v8 requestContext];
    v7 = [v8 text];
    [v5 startTextToSpeechTranslationWithContext:v6 text:v7];

    WeakRetained = v8;
  }
}

@end