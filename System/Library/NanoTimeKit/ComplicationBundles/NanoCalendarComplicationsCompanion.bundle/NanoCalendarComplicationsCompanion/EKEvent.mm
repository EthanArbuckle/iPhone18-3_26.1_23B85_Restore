@interface EKEvent
- (id)nanoPrivacyAwareDescription;
@end

@implementation EKEvent

- (id)nanoPrivacyAwareDescription
{
  if (qword_280D0 != -1)
  {
    sub_1313C();
  }

  v3 = byte_280D8;
  v62 = [(EKEvent *)self objectID];
  v4 = [(EKEvent *)self title];
  v5 = v4;
  v53 = v4;
  if (v3 == 1)
  {
    v45 = [(EKEvent *)self externalURL];
    v61 = [(EKEvent *)self calendar];
    v49 = [v61 objectID];
    v51 = [(EKEvent *)self startDate];
    v64 = [(EKEvent *)self endDate];
    v43 = [(EKEvent *)self isAllDay];
    v60 = [(EKEvent *)self structuredLocation];
    v47 = [v60 objectID];
    v59 = [(EKEvent *)self structuredLocation];
    v63 = [v59 title];
    v58 = [(EKEvent *)self structuredLocation];
    v57 = [v58 geoLocation];
    v56 = [(EKEvent *)self organizer];
    v6 = [v56 objectID];
    v55 = [(EKEvent *)self organizer];
    v7 = [v55 name];
    v8 = [(EKEvent *)self organizer];
    v9 = [v8 isCurrentUser];
    v10 = [(EKEvent *)self status];
    v11 = v5;
    v12 = [(EKEvent *)self availability];
    v13 = [(EKEvent *)self occurrenceDate];
    v14 = [(EKEvent *)self isDetached];
    v15 = [(EKEvent *)self calendar];
    v16 = [v15 type] == &dword_4;
    v39 = v12;
    v17 = v11;
    v18 = v45;
    v37 = v10;
    v54 = v7;
    v32 = v6;
    v34 = v7;
    v19 = v6;
    v20 = v51;
    v21 = v47;
    v22 = v62;
    v40 = v14;
    v23 = v49;
    [NSString stringWithFormat:@"Event objectID=%@; title=%@; externalURL=%@; Cal objID=%@; startDate=%@; endDate=%@; allDay=%d; Loc objectID=%@; loc=%@; hasGeoLoc=%d; Organizer objectID=%@; name=%@; orgIsCurrUser=%d; status=%li; avail=%li; occurDate=%@; detached=%d; inBdayCal=%d", v62, v17, v45, v49, v51, v64, v43, v47, v63, v57 != 0, v32, v34, v9, v37, v39, v13, v40, v16];
  }

  else
  {
    v46 = [v4 length];
    v18 = [(EKEvent *)self externalURL];
    v61 = [(EKEvent *)self calendar];
    v50 = [v61 objectID];
    v52 = [(EKEvent *)self startDate];
    v64 = [(EKEvent *)self endDate];
    v44 = [(EKEvent *)self isAllDay];
    v60 = [(EKEvent *)self structuredLocation];
    v48 = [v60 objectID];
    v59 = [(EKEvent *)self structuredLocation];
    v63 = [v59 title];
    v42 = [v63 length];
    v58 = [(EKEvent *)self structuredLocation];
    v57 = [v58 geoLocation];
    v56 = [(EKEvent *)self organizer];
    v24 = [v56 objectID];
    v55 = [(EKEvent *)self organizer];
    v54 = [v55 name];
    v25 = [v54 length];
    v8 = [(EKEvent *)self organizer];
    v26 = [v8 isCurrentUser];
    v27 = [(EKEvent *)self status];
    v28 = [(EKEvent *)self availability];
    v13 = [(EKEvent *)self occurrenceDate];
    v29 = [(EKEvent *)self isDetached];
    v15 = [(EKEvent *)self calendar];
    v36 = v26;
    v38 = v27;
    v33 = v24;
    v35 = v25;
    v19 = v24;
    v23 = v50;
    v21 = v48;
    v22 = v62;
    v41 = v29;
    v20 = v52;
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Event objectID=%@; titleLen=%lu; externalURL=%@; Cal objID=%@; startDate=%@; endDate=%@; allDay=%d; Loc objectID=%@; locLen=%lu; hasGeoLoc=%d; Organizer objectID=%@; nameLen=%lu; orgIsCurrUser=%d; status=%li; avail=%li; occurDate=%@; detached=%d; inBdayCal=%d", v62, v46, v18, v50, v52, v64, v44, v48, v42, v57 != 0, v33, v35, v36, v38, v28, v13, v41, [v15 type] == &dword_4);
  }
  v30 = ;

  return v30;
}

@end