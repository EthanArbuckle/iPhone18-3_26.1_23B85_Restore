@interface EKConferenceDeserializationResult
- (EKConferenceDeserializationResult)initWithConference:(id)a3 range:(_NSRange)a4;
- (_NSRange)range;
@end

@implementation EKConferenceDeserializationResult

- (EKConferenceDeserializationResult)initWithConference:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = EKConferenceDeserializationResult;
  v9 = [(EKConferenceDeserializationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conference, a3);
    v10->_range.location = location;
    v10->_range.length = length;
  }

  return v10;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end