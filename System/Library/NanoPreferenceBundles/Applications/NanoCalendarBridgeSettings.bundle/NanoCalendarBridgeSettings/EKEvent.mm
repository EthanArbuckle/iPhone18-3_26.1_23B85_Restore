@interface EKEvent
- (id)nanoPrivacyAwareDescription;
@end

@implementation EKEvent

- (id)nanoPrivacyAwareDescription
{
  if (qword_15510 != -1)
  {
    sub_80F8();
  }

  v3 = byte_15518;
  objectID = [(EKEvent *)self objectID];
  title = [(EKEvent *)self title];
  v5 = title;
  v53 = title;
  if (v3 == 1)
  {
    externalURL = [(EKEvent *)self externalURL];
    calendar = [(EKEvent *)self calendar];
    objectID2 = [calendar objectID];
    startDate = [(EKEvent *)self startDate];
    endDate = [(EKEvent *)self endDate];
    isAllDay = [(EKEvent *)self isAllDay];
    structuredLocation = [(EKEvent *)self structuredLocation];
    objectID3 = [structuredLocation objectID];
    structuredLocation2 = [(EKEvent *)self structuredLocation];
    title2 = [structuredLocation2 title];
    structuredLocation3 = [(EKEvent *)self structuredLocation];
    geoLocation = [structuredLocation3 geoLocation];
    organizer = [(EKEvent *)self organizer];
    objectID4 = [organizer objectID];
    organizer2 = [(EKEvent *)self organizer];
    name = [organizer2 name];
    organizer3 = [(EKEvent *)self organizer];
    isCurrentUser = [organizer3 isCurrentUser];
    status = [(EKEvent *)self status];
    v11 = v5;
    availability = [(EKEvent *)self availability];
    occurrenceDate = [(EKEvent *)self occurrenceDate];
    isDetached = [(EKEvent *)self isDetached];
    calendar2 = [(EKEvent *)self calendar];
    v16 = [calendar2 type] == &dword_4;
    v39 = availability;
    v17 = v11;
    externalURL2 = externalURL;
    v37 = status;
    name2 = name;
    v32 = objectID4;
    v34 = name;
    v19 = objectID4;
    v20 = startDate;
    v21 = objectID3;
    v22 = objectID;
    v40 = isDetached;
    v23 = objectID2;
    [NSString stringWithFormat:@"Event objectID=%@; title=%@; externalURL=%@; Cal objID=%@; startDate=%@; endDate=%@; allDay=%d; Loc objectID=%@; loc=%@; hasGeoLoc=%d; Organizer objectID=%@; name=%@; orgIsCurrUser=%d; status=%li; avail=%li; occurDate=%@; detached=%d; inBdayCal=%d", objectID, v17, externalURL, objectID2, startDate, endDate, isAllDay, objectID3, title2, geoLocation != 0, v32, v34, isCurrentUser, v37, v39, occurrenceDate, v40, v16];
  }

  else
  {
    v46 = [title length];
    externalURL2 = [(EKEvent *)self externalURL];
    calendar = [(EKEvent *)self calendar];
    objectID5 = [calendar objectID];
    startDate2 = [(EKEvent *)self startDate];
    endDate = [(EKEvent *)self endDate];
    isAllDay2 = [(EKEvent *)self isAllDay];
    structuredLocation = [(EKEvent *)self structuredLocation];
    objectID6 = [structuredLocation objectID];
    structuredLocation2 = [(EKEvent *)self structuredLocation];
    title2 = [structuredLocation2 title];
    v42 = [title2 length];
    structuredLocation3 = [(EKEvent *)self structuredLocation];
    geoLocation = [structuredLocation3 geoLocation];
    organizer = [(EKEvent *)self organizer];
    objectID7 = [organizer objectID];
    organizer2 = [(EKEvent *)self organizer];
    name2 = [organizer2 name];
    v25 = [name2 length];
    organizer3 = [(EKEvent *)self organizer];
    isCurrentUser2 = [organizer3 isCurrentUser];
    status2 = [(EKEvent *)self status];
    availability2 = [(EKEvent *)self availability];
    occurrenceDate = [(EKEvent *)self occurrenceDate];
    isDetached2 = [(EKEvent *)self isDetached];
    calendar2 = [(EKEvent *)self calendar];
    v36 = isCurrentUser2;
    v38 = status2;
    v33 = objectID7;
    v35 = v25;
    v19 = objectID7;
    v23 = objectID5;
    v21 = objectID6;
    v22 = objectID;
    v41 = isDetached2;
    v20 = startDate2;
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Event objectID=%@; titleLen=%lu; externalURL=%@; Cal objID=%@; startDate=%@; endDate=%@; allDay=%d; Loc objectID=%@; locLen=%lu; hasGeoLoc=%d; Organizer objectID=%@; nameLen=%lu; orgIsCurrUser=%d; status=%li; avail=%li; occurDate=%@; detached=%d; inBdayCal=%d", objectID, v46, externalURL2, objectID5, startDate2, endDate, isAllDay2, objectID6, v42, geoLocation != 0, v33, v35, v36, v38, availability2, occurrenceDate, v41, [calendar2 type] == &dword_4);
  }
  v30 = ;

  return v30;
}

@end