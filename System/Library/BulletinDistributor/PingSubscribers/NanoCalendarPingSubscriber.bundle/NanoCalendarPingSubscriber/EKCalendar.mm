@interface EKCalendar
- (id)nanoPrivacyAwareDescription;
@end

@implementation EKCalendar

- (id)nanoPrivacyAwareDescription
{
  if (qword_10D98 != -1)
  {
    sub_5624();
  }

  v3 = byte_10DA0;
  v4 = [(EKCalendar *)self objectID];
  v5 = [(EKCalendar *)self title];
  v6 = v5;
  if (v3 == 1)
  {
    [NSString stringWithFormat:@"Cal objectID=%@; title=%@; type=%li; allowsMod=%d", v4, v5, [(EKCalendar *)self type], [(EKCalendar *)self allowsContentModifications]];
  }

  else
  {
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Cal objectID=%@; titleLen=%lu; type=%li; allowsMod=%d", v4, [v5 length], -[EKCalendar type](self, "type"), -[EKCalendar allowsContentModifications](self, "allowsContentModifications"));
  }
  v7 = ;

  return v7;
}

@end