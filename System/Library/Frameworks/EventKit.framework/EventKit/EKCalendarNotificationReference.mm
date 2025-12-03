@interface EKCalendarNotificationReference
+ (id)batchLoadNotifications:(id)notifications;
+ (id)batchLoadTypeForRelationsOfObjectType:(int)type;
+ (id)requiredPropertiesForBatchLoadType:(int)type;
- (BOOL)loaded;
- (EKCalendarNotification)notification;
- (EKCalendarNotificationReference)initWithType:(int)type objectID:(id)d date:(id)date eventStore:(id)store;
- (id)_notification;
- (id)description;
- (int)batchLoadType;
- (int64_t)_notificationTypeForResourceChange:(id)change notificationType:(int)type;
@end

@implementation EKCalendarNotificationReference

- (EKCalendarNotificationReference)initWithType:(int)type objectID:(id)d date:(id)date eventStore:(id)store
{
  dCopy = d;
  dateCopy = date;
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = EKCalendarNotificationReference;
  v14 = [(EKCalendarNotificationReference *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_objectID, d);
    objc_storeStrong(&v15->_date, date);
    objc_storeStrong(&v15->_eventStore, store);
    notification = v15->_notification;
    v15->_notification = 0;

    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

- (EKCalendarNotification)notification
{
  os_unfair_lock_lock(&self->_lock);
  _notification = [(EKCalendarNotificationReference *)self _notification];
  os_unfair_lock_unlock(&self->_lock);

  return _notification;
}

- (id)_notification
{
  p_notification = &self->_notification;
  notification = self->_notification;
  if (notification)
  {
    goto LABEL_47;
  }

  v5 = [(EKEventStore *)self->_eventStore registerFetchedObjectWithID:self->_objectID];
  if (v5)
  {
    v6 = v5;
    type = self->_type;
    if (type > 2)
    {
      if ((type - 4) < 2)
      {
        v8 = [(EKEventStore *)self->_eventStore publicObjectWithPersistentObject:v5];
        calendarItem = [(EKEvent *)v8 calendarItem];
        calendar = [(EKCalendarItem *)v8 calendar];
        v13 = [(EKCalendarNotificationReference *)self _notificationTypeForResourceChange:v8 notificationType:self->_type];
        v14 = off_1E77FB878;
        if (self->_type != 5)
        {
          v14 = off_1E77FB868;
        }

        v15 = [objc_alloc(*v14) initWithType:v13];
        if ([(EKEvent *)v8 changeType]== 3)
        {
          deletedTitle = [(EKEvent *)v8 deletedTitle];
          v17 = deletedTitle;
          if (deletedTitle)
          {
            title = deletedTitle;
          }

          else
          {
            title = [calendarItem title];
          }

          title2 = title;
        }

        else
        {
          title2 = [calendarItem title];
        }

        v42 = v13 - 4;
        if (!title2)
        {
          calendar2 = [(EKCalendarItem *)v8 calendar];
          title2 = [calendar2 title];
        }

        v44 = v42 & 0xFFFFFFFFFFFFFFF5;
        v45 = CFPreferencesCopyAppValue(@"CalendarsExcludedFromNotifications", *MEMORY[0x1E6993168]);
        objc_opt_class();
        v70 = v45;
        if (objc_opt_isKindOfClass())
        {
          v72 = [MEMORY[0x1E695DFD8] setWithArray:v45];
        }

        else
        {
          v72 = 0;
        }

        v46 = calendar;
        [v15 setTitle:title2];
        if (v44)
        {
          objectID = [(EKObject *)v8 objectID];
          uRIRepresentation = [objectID URIRepresentation];
          [v15 setURL:uRIRepresentation];
        }

        else
        {
          objectID = [calendarItem externalURI];
          [v15 setURL:objectID];
        }

        changedByDisplayName = [(EKEvent *)v8 changedByDisplayName];
        [v15 setName:changedByDisplayName];

        emailAddress = [(EKEvent *)v8 emailAddress];
        [v15 setEmailAddress:emailAddress];

        phoneNumber = [(EKEvent *)v8 phoneNumber];
        [v15 setPhoneNumber:phoneNumber];

        calendar3 = [(EKCalendarItem *)v8 calendar];
        title3 = [calendar3 title];
        [v15 setCalendarName:title3];

        eventIdentifier = [calendarItem eventIdentifier];
        [v15 setEventID:eventIdentifier];

        [v15 setAlerted:{-[EKEvent alerted](v8, "alerted")}];
        calendarIdentifier = [calendar calendarIdentifier];
        [v15 setHiddenFromNotificationCenter:{objc_msgSend(v72, "containsObject:", calendarIdentifier)}];

        if (calendarItem)
        {
          calendar4 = [calendarItem calendar];
          [v15 setDotColor:{objc_msgSend(calendar4, "CGColor")}];
        }

        else
        {
          [v15 setDotColor:{objc_msgSend(calendar, "CGColor")}];
        }

        objectID2 = [(EKObject *)v8 objectID];
        [v15 setObjectID:objectID2];

        calendar5 = [(EKCalendarItem *)v8 calendar];
        source = [calendar5 source];
        [v15 setSource:source];

        [v15 setEvent:calendarItem];
        calendar6 = [(EKCalendarItem *)v8 calendar];
        [v15 setCalendar:calendar6];

        [v15 setChangeType:{-[EKEvent changeType](v8, "changeType")}];
        if ([(EKEvent *)v8 changeType]== 4)
        {
          createCount = [(EKEvent *)v8 createCount];
          [v15 setCreateCount:createCount];

          updateCount = [(EKEvent *)v8 updateCount];
          [v15 setUpdateCount:updateCount];

          deleteCount = [(EKEvent *)v8 deleteCount];
          [v15 setDeleteCount:deleteCount];
        }

        else
        {
          [v15 setDateChanged:{-[EKEvent dateChanged](v8, "dateChanged")}];
          [v15 setTimeChanged:{-[EKEvent timeChanged](v8, "timeChanged")}];
          [v15 setLocationChanged:{-[EKEvent locationChanged](v8, "locationChanged")}];
          [v15 setTitleChanged:{-[EKEvent titleChanged](v8, "titleChanged")}];
          startDate = [calendarItem startDate];
          [v15 setStartDate:startDate];

          calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
          v66 = [calendarItem earliestOccurrenceEndingAfter:calSimulatedDateForNow excludeSignificantDetachments:1 excludeCanceledDetachments:1 excludeDeclinedDetachments:1];
          startDate2 = [v66 startDate];
          [v15 setStartDateForNextOccurrence:startDate2];

          v46 = calendar;
          endDateUnadjustedForLegacyClients = [calendarItem endDateUnadjustedForLegacyClients];
          [v15 setEndDate:endDateUnadjustedForLegacyClients];

          [v15 setAllDay:{objc_msgSend(calendarItem, "isAllDay")}];
          deleteCount = [calendarItem locationWithoutPrediction];
          [v15 setLocation:deleteCount];
        }

        objc_storeStrong(p_notification, v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 updateSuggestedEventWithEventStore:self->_eventStore];
        }

        goto LABEL_45;
      }

      if (type == 3)
      {
        v8 = [(EKEventStore *)self->_eventStore publicObjectWithPersistentObject:v5];
        if ([(EKEvent *)v8 shareeStatus]== 3)
        {
          v28 = 10;
        }

        else
        {
          v28 = 9;
        }

        v19 = [[EKCalendarInviteReplyNotification alloc] initWithType:v28];
        calendarName = [(EKEvent *)v8 calendarName];
        [(EKCalendarNotification *)v19 setTitle:calendarName];

        shareeDisplayName = [(EKEvent *)v8 shareeDisplayName];
        [(EKCalendarNotification *)v19 setName:shareeDisplayName];

        shareeEmailAddress = [(EKEvent *)v8 shareeEmailAddress];
        [(EKCalendarNotification *)v19 setEmailAddress:shareeEmailAddress];

        shareePhoneNumber = [(EKEvent *)v8 shareePhoneNumber];
        [(EKCalendarNotification *)v19 setPhoneNumber:shareePhoneNumber];

        shareeURL = [(EKEvent *)v8 shareeURL];
        [(EKCalendarNotification *)v19 setURL:shareeURL];

        [(EKCalendarNotification *)v19 setAlerted:[(EKEvent *)v8 alerted]];
        [(EKCalendarNotification *)v19 setHiddenFromNotificationCenter:0];
        [(EKCalendarInviteReplyNotification *)v19 setStatus:[(EKEvent *)v8 shareeStatus]];
        inviteReplyCalendar = [(EKEvent *)v8 inviteReplyCalendar];
        -[EKCalendarNotification setDotColor:](v19, "setDotColor:", [inviteReplyCalendar CGColor]);

        objectID3 = [(EKObject *)v8 objectID];
        [(EKCalendarNotification *)v19 setObjectID:objectID3];

        objectID4 = [(EKObject *)v8 objectID];
        uRIRepresentation2 = [objectID4 URIRepresentation];
        [(EKCalendarNotification *)v19 setURL:uRIRepresentation2];

        v38 = [EKInviteReplyNotification sourceForInviteReplyNotification:v8];
        [(EKCalendarNotification *)v19 setSource:v38];

        inviteReplyCalendar2 = [(EKEvent *)v8 inviteReplyCalendar];
        [(EKCalendarNotification *)v19 setCalendar:inviteReplyCalendar2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          inviteReplyCalendar3 = [(EKEvent *)v8 inviteReplyCalendar];
          -[EKCalendarInviteReplyNotification setAllowedEntityTypes:](v19, "setAllowedEntityTypes:", [inviteReplyCalendar3 allowedEntityTypes]);
        }

        else
        {
          [(EKCalendarInviteReplyNotification *)v19 setAllowedEntityTypes:1];
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (type < 2)
      {
        v8 = [[EKEvent alloc] initWithPersistentObject:v5 occurrenceDate:self->_date];
        v9 = [[EKCalendarEventInvitationNotification alloc] initWithEvent:v8];
        calendarItem = self->_notification;
        self->_notification = &v9->super;
LABEL_45:

        goto LABEL_46;
      }

      if (type == 2)
      {
        v8 = [(EKObject *)[EKCalendar alloc] initWithPersistentObject:v5];
        v19 = [[EKCalendarSharedCalendarNotification alloc] initWithType:8];
        title4 = [(EKEvent *)v8 title];
        [(EKCalendarNotification *)v19 setTitle:title4];

        [(EKCalendarNotification *)v19 setHiddenFromNotificationCenter:[(EKEvent *)v8 invitationStatus]== 1];
        sharedOwnerName = [(EKEvent *)v8 sharedOwnerName];
        [(EKCalendarNotification *)v19 setName:sharedOwnerName];

        sharedOwnerEmail = [(EKEvent *)v8 sharedOwnerEmail];
        [(EKCalendarNotification *)v19 setEmailAddress:sharedOwnerEmail];

        sharedOwnerPhoneNumber = [(EKEvent *)v8 sharedOwnerPhoneNumber];
        [(EKCalendarNotification *)v19 setPhoneNumber:sharedOwnerPhoneNumber];

        sharedOwnerURL = [(EKEvent *)v8 sharedOwnerURL];
        [(EKCalendarNotification *)v19 setURL:sharedOwnerURL];

        [(EKCalendarNotification *)v19 setAlerted:[(EKEvent *)v8 invitationStatus]!= 3];
        [(EKCalendarInviteReplyNotification *)v19 setSharingInvitationResponse:[(EKEvent *)v8 sharingInvitationResponse]];
        [(EKCalendarNotification *)v19 setDotColor:0];
        objectID5 = [(EKObject *)v8 objectID];
        [(EKCalendarNotification *)v19 setObjectID:objectID5];

        externalURI = [(EKEvent *)v8 externalURI];
        [(EKCalendarNotification *)v19 setURL:externalURI];

        [(EKCalendarInviteReplyNotification *)v19 setAllowedEntityTypes:[(EKEvent *)v8 allowedEntityTypes]];
        source2 = [(EKEvent *)v8 source];
        [(EKCalendarNotification *)v19 setSource:source2];

        [(EKCalendarNotification *)v19 setCalendar:v8];
LABEL_25:
        calendarItem = *p_notification;
        *p_notification = &v19->super;
        goto LABEL_45;
      }
    }

LABEL_46:

    notification = *p_notification;
LABEL_47:
    v12 = notification;
    goto LABEL_48;
  }

  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKCalendarNotificationReference *)v11 _notification];
  }

  v12 = 0;
LABEL_48:

  return v12;
}

- (int64_t)_notificationTypeForResourceChange:(id)change notificationType:(int)type
{
  changeType = [change changeType];
  v6 = -1;
  v7 = 13;
  if (type != 5)
  {
    v7 = -1;
  }

  if (type == 4)
  {
    v7 = 5;
  }

  v8 = 7;
  v9 = 11;
  if (changeType != 5)
  {
    v9 = -1;
  }

  if (changeType != 4)
  {
    v8 = v9;
  }

  if (changeType != 3)
  {
    v7 = v8;
  }

  v10 = 12;
  if (type != 5)
  {
    v10 = -1;
  }

  if (type == 4)
  {
    v10 = 4;
  }

  v11 = 14;
  if (type != 5)
  {
    v11 = -1;
  }

  if (type == 4)
  {
    v11 = 6;
  }

  if (changeType == 2)
  {
    v6 = v11;
  }

  if (changeType == 1)
  {
    v6 = v10;
  }

  if (changeType <= 2)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (BOOL)loaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_notification != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int)batchLoadType
{
  v2 = self->_type - 1;
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1A81C3B08[v2];
  }
}

+ (id)requiredPropertiesForBatchLoadType:(int)type
{
  v63[34] = *MEMORY[0x1E69E9840];
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        v32 = EKPersistentEvent;
      }

      else
      {
        if (type != 8)
        {
          goto LABEL_25;
        }

        v32 = EKPersistentLocation;
      }

      defaultPropertiesToLoad = [(__objc2_class *)v32 defaultPropertiesToLoad];
      goto LABEL_24;
    }

    if (type == 5)
    {
      v44 = *MEMORY[0x1E6992B60];
      v59[0] = *MEMORY[0x1E6992B50];
      v59[1] = v44;
      v45 = *MEMORY[0x1E6992B08];
      v59[2] = *MEMORY[0x1E6992B70];
      v59[3] = v45;
      v46 = *MEMORY[0x1E6992B78];
      v59[4] = *MEMORY[0x1E6992B58];
      v59[5] = v46;
      v47 = *MEMORY[0x1E6992538];
      v59[6] = *MEMORY[0x1E6992B38];
      v59[7] = v47;
      v48 = *MEMORY[0x1E6992B80];
      v59[8] = *MEMORY[0x1E6992508];
      v59[9] = v48;
      v49 = *MEMORY[0x1E6992B40];
      v59[10] = *MEMORY[0x1E6992B88];
      v59[11] = v49;
      v50 = *MEMORY[0x1E6992510];
      v59[12] = *MEMORY[0x1E6992528];
      v59[13] = v50;
      v59[14] = *MEMORY[0x1E6992B68];
      v30 = MEMORY[0x1E695DEC8];
      v31 = v59;
      v39 = 15;
      goto LABEL_23;
    }

    v26 = *MEMORY[0x1E6992B60];
    v58[0] = *MEMORY[0x1E6992B50];
    v58[1] = v26;
    v27 = *MEMORY[0x1E6992B08];
    v58[2] = *MEMORY[0x1E6992B70];
    v58[3] = v27;
    v28 = *MEMORY[0x1E6992B78];
    v58[4] = *MEMORY[0x1E6992B58];
    v58[5] = v28;
    v29 = *MEMORY[0x1E6992B28];
    v58[6] = *MEMORY[0x1E6992B38];
    v58[7] = v29;
    v58[8] = *MEMORY[0x1E6992B40];
    v30 = MEMORY[0x1E695DEC8];
    v31 = v58;
LABEL_18:
    v39 = 9;
LABEL_23:
    defaultPropertiesToLoad = [v30 arrayWithObjects:v31 count:v39];
LABEL_24:
    v3 = defaultPropertiesToLoad;
    goto LABEL_25;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      v52 = *MEMORY[0x1E6992B00];
      v61[0] = *MEMORY[0x1E6992AF0];
      v61[1] = v52;
      v53 = *MEMORY[0x1E6992AE0];
      v61[2] = *MEMORY[0x1E6992AD8];
      v61[3] = v53;
      v54 = *MEMORY[0x1E6992AF8];
      v61[4] = *MEMORY[0x1E6992AE8];
      v61[5] = v54;
      v55 = *MEMORY[0x1E6992AC0];
      v61[6] = *MEMORY[0x1E6992A90];
      v61[7] = v55;
      v30 = MEMORY[0x1E695DEC8];
      v31 = v61;
      v39 = 8;
    }

    else
    {
      v33 = *MEMORY[0x1E6992BF0];
      v60[0] = *MEMORY[0x1E6992BF8];
      v60[1] = v33;
      v34 = *MEMORY[0x1E6992C40];
      v60[2] = *MEMORY[0x1E6992C00];
      v60[3] = v34;
      v35 = *MEMORY[0x1E6992C18];
      v60[4] = *MEMORY[0x1E6992C10];
      v60[5] = v35;
      v36 = *MEMORY[0x1E6992C08];
      v60[6] = *MEMORY[0x1E6992C20];
      v60[7] = v36;
      v37 = *MEMORY[0x1E6992C30];
      v60[8] = *MEMORY[0x1E6992BE8];
      v60[9] = v37;
      v38 = *MEMORY[0x1E6992C38];
      v60[10] = *MEMORY[0x1E6992C60];
      v60[11] = v38;
      v60[12] = *MEMORY[0x1E6992C28];
      v30 = MEMORY[0x1E695DEC8];
      v31 = v60;
      v39 = 13;
    }

    goto LABEL_23;
  }

  if (type < 2)
  {
    v5 = *MEMORY[0x1E6992988];
    v63[0] = *MEMORY[0x1E69929E0];
    v63[1] = v5;
    v6 = *MEMORY[0x1E6992580];
    v63[2] = *MEMORY[0x1E6992708];
    v63[3] = v6;
    v7 = *MEMORY[0x1E6992628];
    v63[4] = *MEMORY[0x1E69926D8];
    v63[5] = v7;
    v8 = *MEMORY[0x1E6992990];
    v63[6] = *MEMORY[0x1E6992650];
    v63[7] = v8;
    v9 = *MEMORY[0x1E6992700];
    v63[8] = *MEMORY[0x1E6992570];
    v63[9] = v9;
    v10 = *MEMORY[0x1E6992968];
    v63[10] = *MEMORY[0x1E69926C8];
    v63[11] = v10;
    v11 = *MEMORY[0x1E69926D0];
    v63[12] = *MEMORY[0x1E6992600];
    v63[13] = v11;
    v12 = *MEMORY[0x1E69929B0];
    v63[14] = *MEMORY[0x1E6992648];
    v63[15] = v12;
    v13 = *MEMORY[0x1E6992630];
    v63[16] = *MEMORY[0x1E6992928];
    v63[17] = v13;
    v14 = *MEMORY[0x1E69925E0];
    v63[18] = *MEMORY[0x1E6992B08];
    v63[19] = v14;
    v15 = *MEMORY[0x1E69925E8];
    v16 = *MEMORY[0x1E6992658];
    v63[20] = *MEMORY[0x1E69925E8];
    v63[21] = v16;
    v17 = *MEMORY[0x1E69925F0];
    v63[22] = *MEMORY[0x1E69925B0];
    v63[23] = v17;
    v18 = *MEMORY[0x1E69929B8];
    v63[24] = *MEMORY[0x1E69929F8];
    v63[25] = v18;
    v19 = *MEMORY[0x1E69929A0];
    v63[26] = *MEMORY[0x1E69929C0];
    v63[27] = v19;
    v20 = *MEMORY[0x1E69926E8];
    v63[28] = *MEMORY[0x1E69926F8];
    v63[29] = v20;
    v21 = *MEMORY[0x1E69929D8];
    v63[30] = *MEMORY[0x1E6992950];
    v63[31] = v21;
    v22 = *MEMORY[0x1E69929A8];
    v63[32] = *MEMORY[0x1E69925D8];
    v63[33] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:34];
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count") + 1}];
    [v3 addObjectsFromArray:v23];
    v24 = *MEMORY[0x1E6992568];
    if (type)
    {
      v25 = *MEMORY[0x1E6992568];
    }

    else
    {
      v25 = v15;
    }

    [v3 addObject:v25];

    goto LABEL_25;
  }

  if (type == 2)
  {
    v40 = *MEMORY[0x1E6992760];
    v62[0] = *MEMORY[0x1E69928A8];
    v62[1] = v40;
    v41 = *MEMORY[0x1E6992718];
    v62[2] = *MEMORY[0x1E6992870];
    v62[3] = v41;
    v42 = *MEMORY[0x1E6992848];
    v62[4] = *MEMORY[0x1E6992770];
    v62[5] = v42;
    v43 = *MEMORY[0x1E6992860];
    v62[6] = *MEMORY[0x1E6992850];
    v62[7] = v43;
    v62[8] = *MEMORY[0x1E6992B08];
    v30 = MEMORY[0x1E695DEC8];
    v31 = v62;
    goto LABEL_18;
  }

LABEL_25:
  v56 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)batchLoadTypeForRelationsOfObjectType:(int)type
{
  v19[4] = *MEMORY[0x1E69E9840];
  switch(type)
  {
    case 4:
      v14 = *MEMORY[0x1E6992BF8];
      v15 = &unk_1F1B6AAE0;
      v5 = MEMORY[0x1E695DF20];
      v6 = &v15;
      v7 = &v14;
      v8 = 1;
      goto LABEL_7;
    case 1:
      v9 = *MEMORY[0x1E6992650];
      v16[0] = *MEMORY[0x1E6992628];
      v16[1] = v9;
      v17[0] = &unk_1F1B6AA98;
      v17[1] = &unk_1F1B6AAB0;
      v10 = *MEMORY[0x1E6992580];
      v16[2] = *MEMORY[0x1E6992568];
      v16[3] = v10;
      v17[2] = &unk_1F1B6AAB0;
      v17[3] = &unk_1F1B6AAC8;
      v16[4] = *MEMORY[0x1E69926D8];
      v17[4] = &unk_1F1B6AAC8;
      v5 = MEMORY[0x1E695DF20];
      v6 = v17;
      v7 = v16;
      v8 = 5;
      goto LABEL_7;
    case 0:
      v3 = *MEMORY[0x1E6992650];
      v18[0] = *MEMORY[0x1E6992628];
      v18[1] = v3;
      v19[0] = &unk_1F1B6AA98;
      v19[1] = &unk_1F1B6AAB0;
      v4 = *MEMORY[0x1E69926D8];
      v18[2] = *MEMORY[0x1E6992580];
      v18[3] = v4;
      v19[2] = &unk_1F1B6AAC8;
      v19[3] = &unk_1F1B6AAC8;
      v5 = MEMORY[0x1E695DF20];
      v6 = v19;
      v7 = v18;
      v8 = 4;
LABEL_7:
      v11 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:v8];
      goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)batchLoadNotifications:(id)notifications
{
  v89 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  firstObject = [notificationsCopy firstObject];
  eventStore = [firstObject eventStore];

  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = notificationsCopy;
  v5 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v79;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v79 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v78 + 1) + 8 * i);
        if (([v10 loaded] & 1) == 0)
        {
          objectID = [v10 objectID];
          if (([v7 containsObject:objectID] & 1) == 0)
          {
            batchLoadType = [v10 batchLoadType];
            v13 = [eventStore registerFetchedObjectWithID:objectID];
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v7 addObject:objectID];
            v14 = *(v87 + batchLoadType);
            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
              *(v87 + batchLoadType) = v14;
            }

            [v14 addObject:v13];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    v17 = *(v87 + v15);
    v18 = [v17 count];
    v19 = v16;
    if (v18)
    {
      v20 = [self requiredPropertiesForBatchLoadType:v15];
      [eventStore ensureLoadedProperties:v20 forObjects:v17];

      *(v87 + v15) = 0;
      v50 = v15;
      v55 = [self batchLoadTypeForRelationsOfObjectType:v15];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v53 = v17;
      v56 = [v53 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v56)
      {
        v54 = *v75;
        do
        {
          v21 = 0;
          do
          {
            if (*v75 != v54)
            {
              objc_enumerationMutation(v53);
            }

            v57 = v21;
            v59 = *(*(&v74 + 1) + 8 * v21);
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v61 = v55;
            v60 = [v61 countByEnumeratingWithState:&v70 objects:v84 count:16];
            if (v60)
            {
              v58 = *v71;
              do
              {
                for (j = 0; j != v60; ++j)
                {
                  if (*v71 != v58)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v23 = *(*(&v70 + 1) + 8 * j);
                  v24 = [v59 valueForKey:v23];
                  if (v24)
                  {
                    v25 = [v61 objectForKeyedSubscript:v23];
                    intValue = [v25 intValue];

                    v27 = *(v87 + intValue);
                    if (!v27)
                    {
                      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      *(v87 + intValue) = v27;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v68 = 0u;
                      v69 = 0u;
                      v66 = 0u;
                      v67 = 0u;
                      v28 = v24;
                      v29 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
                      if (v29)
                      {
                        v30 = v29;
                        v31 = *v67;
                        do
                        {
                          for (k = 0; k != v30; ++k)
                          {
                            if (*v67 != v31)
                            {
                              objc_enumerationMutation(v28);
                            }

                            v33 = *(*(&v66 + 1) + 8 * k);
                            objectID2 = [v33 objectID];
                            if (([v7 containsObject:objectID2] & 1) == 0)
                            {
                              [v7 addObject:objectID2];
                              [v27 addObject:v33];
                            }
                          }

                          v30 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
                        }

                        while (v30);
                      }
                    }

                    else
                    {
                      v35 = v24;
                      objectID3 = [v35 objectID];
                      if (([v7 containsObject:objectID3] & 1) == 0)
                      {
                        [v7 addObject:objectID3];
                        [v27 addObject:v35];
                      }
                    }
                  }
                }

                v60 = [v61 countByEnumeratingWithState:&v70 objects:v84 count:16];
              }

              while (v60);
            }

            v21 = v57 + 1;
          }

          while (v57 + 1 != v56);
          v56 = [v53 countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v56);
      }

      v19 = 1;
      v15 = v50;
    }

    v37 = v15 == 8;
    v38 = v15 != 8;
    if (v15 == 8)
    {
      v15 = 0;
    }

    else
    {
      ++v15;
    }

    v16 = v38 & v19;
  }

  while (!v37 || (v19 & 1) != 0);
  v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v40 = obj;
  v41 = [v40 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v63;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v63 != v43)
        {
          objc_enumerationMutation(v40);
        }

        notification = [*(*(&v62 + 1) + 8 * m) notification];
        if (notification)
        {
          [v39 addObject:notification];
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v42);
  }

  for (n = 64; n != -8; n -= 8)
  {
  }

  v47 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = self->_type;
  rowID = [(EKObjectID *)self->_objectID rowID];
  date = self->_date;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [(NSDate *)date descriptionWithLocale:currentLocale];
  v10 = [v3 stringWithFormat:@"%@{type: %d, rowID: %d, date: %@}", v4, type, rowID, v9];

  return v10;
}

@end