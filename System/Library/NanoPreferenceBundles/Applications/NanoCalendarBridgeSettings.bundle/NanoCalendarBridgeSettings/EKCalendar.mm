@interface EKCalendar
- (id)nanoPrivacyAwareDescription;
@end

@implementation EKCalendar

- (id)nanoPrivacyAwareDescription
{
  if (qword_15510 != -1)
  {
    sub_80F8();
  }

  v3 = byte_15518;
  objectID = [(EKCalendar *)self objectID];
  title = [(EKCalendar *)self title];
  v6 = title;
  if (v3 == 1)
  {
    [NSString stringWithFormat:@"Cal objectID=%@; title=%@; type=%li; allowsMod=%d", objectID, title, [(EKCalendar *)self type], [(EKCalendar *)self allowsContentModifications]];
  }

  else
  {
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Cal objectID=%@; titleLen=%lu; type=%li; allowsMod=%d", objectID, [title length], -[EKCalendar type](self, "type"), -[EKCalendar allowsContentModifications](self, "allowsContentModifications"));
  }
  v7 = ;

  return v7;
}

@end