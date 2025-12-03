@interface EKConferenceDeserializationResult
- (EKConferenceDeserializationResult)initWithConference:(id)conference range:(_NSRange)range;
- (_NSRange)range;
@end

@implementation EKConferenceDeserializationResult

- (EKConferenceDeserializationResult)initWithConference:(id)conference range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  conferenceCopy = conference;
  v12.receiver = self;
  v12.super_class = EKConferenceDeserializationResult;
  v9 = [(EKConferenceDeserializationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conference, conference);
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