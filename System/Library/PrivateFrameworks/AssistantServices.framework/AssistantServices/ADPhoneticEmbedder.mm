@interface ADPhoneticEmbedder
+ (id)sharedEmbedder;
- (void)findAlternativesForString:(id)string maxResults:(int)results completion:(id)completion;
- (void)preheatEuclidModelWithLanguageCode:(id)code clientID:(id)d;
@end

@implementation ADPhoneticEmbedder

+ (id)sharedEmbedder
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032B370;
  block[3] = &unk_10051E200;
  block[4] = self;
  if (qword_100590A90 != -1)
  {
    dispatch_once(&qword_100590A90, block);
  }

  v2 = qword_100590A98;

  return v2;
}

- (void)findAlternativesForString:(id)string maxResults:(int)results completion:(id)completion
{
  v5 = *&results;
  completionCopy = completion;
  v9 = completionCopy;
  phoneticEmbedder = self->phoneticEmbedder;
  if (phoneticEmbedder)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10032B4CC;
    v13[3] = &unk_10051C150;
    v14 = completionCopy;
    [(CESRPhoneticEmbedder *)phoneticEmbedder findAlternativesForString:string maxResults:v5 completion:v13];
  }

  else
  {
    v11 = [[NSString alloc] initWithFormat:@"Euclid model should be preheated with language code before calling findAlternativesForString"];
    v12 = [NSError errorWithDomain:v11 code:0 userInfo:0];
    (v9)[2](v9, 0, v12);
  }
}

- (void)preheatEuclidModelWithLanguageCode:(id)code clientID:(id)d
{
  dCopy = d;
  codeCopy = code;
  v8 = [[CESRPhoneticEmbedder alloc] initWithLocaleIdentifier:codeCopy clientID:dCopy];

  phoneticEmbedder = self->phoneticEmbedder;
  self->phoneticEmbedder = v8;
}

@end