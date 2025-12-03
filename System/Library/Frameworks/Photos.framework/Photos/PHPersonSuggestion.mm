@interface PHPersonSuggestion
- (PHPersonSuggestion)initWithKeyFace:(id)face person:(id)person confirmed:(BOOL)confirmed similarityScore:(double)score;
@end

@implementation PHPersonSuggestion

- (PHPersonSuggestion)initWithKeyFace:(id)face person:(id)person confirmed:(BOOL)confirmed similarityScore:(double)score
{
  faceCopy = face;
  personCopy = person;
  v16.receiver = self;
  v16.super_class = PHPersonSuggestion;
  v13 = [(PHPersonSuggestion *)&v16 init];
  v14 = v13;
  if (v13)
  {
    if (faceCopy && personCopy)
    {
      objc_storeStrong(&v13->_keyFace, face);
      objc_storeStrong(&v14->_person, person);
      v14->_confirmed = confirmed;
      v14->_similarityScore = score;
    }

    else
    {

      v14 = 0;
    }
  }

  return v14;
}

@end