@interface PHPersonSuggestion
- (PHPersonSuggestion)initWithKeyFace:(id)a3 person:(id)a4 confirmed:(BOOL)a5 similarityScore:(double)a6;
@end

@implementation PHPersonSuggestion

- (PHPersonSuggestion)initWithKeyFace:(id)a3 person:(id)a4 confirmed:(BOOL)a5 similarityScore:(double)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PHPersonSuggestion;
  v13 = [(PHPersonSuggestion *)&v16 init];
  v14 = v13;
  if (v13)
  {
    if (v11 && v12)
    {
      objc_storeStrong(&v13->_keyFace, a3);
      objc_storeStrong(&v14->_person, a4);
      v14->_confirmed = a5;
      v14->_similarityScore = a6;
    }

    else
    {

      v14 = 0;
    }
  }

  return v14;
}

@end