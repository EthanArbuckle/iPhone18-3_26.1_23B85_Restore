@interface HKSummarySharingEntry
- (BOOL)isEqual:(id)a3;
- (HKSummarySharingEntry)init;
- (HKSummarySharingEntry)initWithCoder:(id)a3;
- (HKSummarySharingEntry)initWithUUID:(id)a3 primaryContactIdentifier:(id)a4 allContactIdentifiers:(id)a5 firstName:(id)a6 lastName:(id)a7 userWheelchairMode:(int64_t)a8 type:(int64_t)a9 status:(int64_t)a10 notificationStatus:(int64_t)a11 direction:(unint64_t)a12 modificationDate:(id)a13 dateAccepted:(id)a14 dateInvited:(id)a15 profileIdentifier:(id)a16 CNContactIdentifier:(id)a17 isPaused:(BOOL)a18;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_setCNContactIdentifier:(id)a3;
- (void)_setDateAccepted:(id)a3;
- (void)_setDateInvited:(id)a3;
- (void)_setProfileIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSummarySharingEntry

- (HKSummarySharingEntry)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSummarySharingEntry)initWithUUID:(id)a3 primaryContactIdentifier:(id)a4 allContactIdentifiers:(id)a5 firstName:(id)a6 lastName:(id)a7 userWheelchairMode:(int64_t)a8 type:(int64_t)a9 status:(int64_t)a10 notificationStatus:(int64_t)a11 direction:(unint64_t)a12 modificationDate:(id)a13 dateAccepted:(id)a14 dateInvited:(id)a15 profileIdentifier:(id)a16 CNContactIdentifier:(id)a17 isPaused:(BOOL)a18
{
  v51 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v30 = a17;
  v52.receiver = self;
  v52.super_class = HKSummarySharingEntry;
  v31 = [(HKSummarySharingEntry *)&v52 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_UUID, a3);
    v33 = [v22 copy];
    primaryContactIdentifier = v32->_primaryContactIdentifier;
    v32->_primaryContactIdentifier = v33;

    v35 = [v23 copy];
    allContactIdentifiers = v32->_allContactIdentifiers;
    v32->_allContactIdentifiers = v35;

    v37 = [v24 copy];
    firstName = v32->_firstName;
    v32->_firstName = v37;

    v39 = [v25 copy];
    lastName = v32->_lastName;
    v32->_lastName = v39;

    v32->_userWheelchairMode = a8;
    v32->_type = a9;
    v32->_status = a10;
    v32->_direction = a12;
    v32->_notificationStatus = a11;
    if (v26)
    {
      v41 = v26;
    }

    else
    {
      v41 = [MEMORY[0x1E695DF00] date];
    }

    modificationDate = v32->_modificationDate;
    v32->_modificationDate = v41;

    objc_storeStrong(&v32->_dateAccepted, a14);
    objc_storeStrong(&v32->_dateInvited, a15);
    v43 = [v29 copy];
    profileIdentifier = v32->_profileIdentifier;
    v32->_profileIdentifier = v43;

    v45 = [v30 copy];
    CNContactIdentifier = v32->_CNContactIdentifier;
    v32->_CNContactIdentifier = v45;

    v32->_isPaused = a18;
  }

  return v32;
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  UUID = self->_UUID;
  primaryContactIdentifier = self->_primaryContactIdentifier;
  firstName = self->_firstName;
  lastName = self->_lastName;
  v8 = HKWheelchairUseDisplayName(self->_userWheelchairMode);
  v9 = HKStringForSharingType(self->_type);
  v10 = HKStringForSharingStatus(self->_status);
  v11 = HKStringForNotificationStatus(self->_notificationStatus);
  v12 = HKStringForMessageDirection(self->_direction);
  v13 = [v16 stringWithFormat:@"<%@:%p UUID=%@, primaryContactIdentifier=%@, firstName=%@, lastName=%@, userWheelchairMode=%@, type=%@, status=%@, notificationStatus=%@, direction=%@, modificationDate=%@, dateAccepted=%@, dateInvited=%@, CNContactIdentifier=%@, isPaused=%d>", v4, self, UUID, primaryContactIdentifier, firstName, lastName, v8, v9, v10, v11, v12, self->_modificationDate, self->_dateAccepted, self->_dateInvited, self->_CNContactIdentifier, self->_isPaused];

  return v13;
}

- (void)_setProfileIdentifier:(id)a3
{
  v4 = [a3 copy];
  profileIdentifier = self->_profileIdentifier;
  self->_profileIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, profileIdentifier);
}

- (void)_setCNContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  CNContactIdentifier = self->_CNContactIdentifier;
  self->_CNContactIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, CNContactIdentifier);
}

- (void)_setDateAccepted:(id)a3
{
  v4 = [a3 copy];
  dateAccepted = self->_dateAccepted;
  self->_dateAccepted = v4;

  MEMORY[0x1EEE66BB8](v4, dateAccepted);
}

- (void)_setDateInvited:(id)a3
{
  v4 = [a3 copy];
  dateInvited = self->_dateInvited;
  self->_dateInvited = v4;

  MEMORY[0x1EEE66BB8](v4, dateInvited);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      UUID = self->_UUID;
      v7 = [(HKSummarySharingEntry *)v5 UUID];
      LODWORD(UUID) = [(NSUUID *)UUID isEqual:v7];

      if (!UUID)
      {
        goto LABEL_39;
      }

      primaryContactIdentifier = self->_primaryContactIdentifier;
      v9 = [(HKSummarySharingEntry *)v5 primaryContactIdentifier];
      v10 = v9;
      if (primaryContactIdentifier == v9)
      {
      }

      else
      {
        v11 = [(HKSummarySharingEntry *)v5 primaryContactIdentifier];
        if (!v11)
        {
          goto LABEL_38;
        }

        v12 = v11;
        v13 = self->_primaryContactIdentifier;
        v14 = [(HKSummarySharingEntry *)v5 primaryContactIdentifier];
        LODWORD(v13) = [(NSString *)v13 isEqualToString:v14];

        if (!v13)
        {
          goto LABEL_39;
        }
      }

      allContactIdentifiers = self->_allContactIdentifiers;
      v17 = [(HKSummarySharingEntry *)v5 allContactIdentifiers];
      v10 = v17;
      if (allContactIdentifiers == v17)
      {
      }

      else
      {
        v18 = [(HKSummarySharingEntry *)v5 allContactIdentifiers];
        if (!v18)
        {
          goto LABEL_38;
        }

        v19 = v18;
        v20 = self->_allContactIdentifiers;
        v21 = [(HKSummarySharingEntry *)v5 allContactIdentifiers];
        LODWORD(v20) = [(NSArray *)v20 isEqualToArray:v21];

        if (!v20)
        {
          goto LABEL_39;
        }
      }

      firstName = self->_firstName;
      v23 = [(HKSummarySharingEntry *)v5 firstName];
      v10 = v23;
      if (firstName == v23)
      {
      }

      else
      {
        v24 = [(HKSummarySharingEntry *)v5 firstName];
        if (!v24)
        {
          goto LABEL_38;
        }

        v25 = v24;
        v26 = self->_firstName;
        v27 = [(HKSummarySharingEntry *)v5 firstName];
        LODWORD(v26) = [(NSString *)v26 isEqualToString:v27];

        if (!v26)
        {
          goto LABEL_39;
        }
      }

      lastName = self->_lastName;
      v29 = [(HKSummarySharingEntry *)v5 lastName];
      v10 = v29;
      if (lastName == v29)
      {
      }

      else
      {
        v30 = [(HKSummarySharingEntry *)v5 lastName];
        if (!v30)
        {
          goto LABEL_38;
        }

        v31 = v30;
        v32 = self->_lastName;
        v33 = [(HKSummarySharingEntry *)v5 lastName];
        LODWORD(v32) = [(NSString *)v32 isEqualToString:v33];

        if (!v32)
        {
          goto LABEL_39;
        }
      }

      userWheelchairMode = self->_userWheelchairMode;
      if (userWheelchairMode != [(HKSummarySharingEntry *)v5 userWheelchairMode])
      {
        goto LABEL_39;
      }

      type = self->_type;
      if (type != [(HKSummarySharingEntry *)v5 type])
      {
        goto LABEL_39;
      }

      status = self->_status;
      if (status != [(HKSummarySharingEntry *)v5 status])
      {
        goto LABEL_39;
      }

      notificationStatus = self->_notificationStatus;
      if (notificationStatus != [(HKSummarySharingEntry *)v5 notificationStatus])
      {
        goto LABEL_39;
      }

      direction = self->_direction;
      if (direction != [(HKSummarySharingEntry *)v5 direction])
      {
        goto LABEL_39;
      }

      modificationDate = self->_modificationDate;
      v40 = [(HKSummarySharingEntry *)v5 modificationDate];

      if (modificationDate != v40)
      {
        goto LABEL_39;
      }

      dateAccepted = self->_dateAccepted;
      v42 = [(HKSummarySharingEntry *)v5 dateAccepted];

      if (dateAccepted != v42)
      {
        goto LABEL_39;
      }

      profileIdentifier = self->_profileIdentifier;
      v44 = [(HKSummarySharingEntry *)v5 profileIdentifier];

      if (profileIdentifier != v44)
      {
        goto LABEL_39;
      }

      CNContactIdentifier = self->_CNContactIdentifier;
      v46 = [(HKSummarySharingEntry *)v5 CNContactIdentifier];
      v10 = v46;
      if (CNContactIdentifier == v46)
      {

LABEL_43:
        isPaused = self->_isPaused;
        v15 = isPaused == [(HKSummarySharingEntry *)v5 isPaused];
        goto LABEL_40;
      }

      v47 = [(HKSummarySharingEntry *)v5 CNContactIdentifier];
      if (v47)
      {
        v48 = v47;
        v49 = self->_CNContactIdentifier;
        v50 = [(HKSummarySharingEntry *)v5 CNContactIdentifier];
        LODWORD(v49) = [(NSString *)v49 isEqualToString:v50];

        if (v49)
        {
          goto LABEL_43;
        }

LABEL_39:
        v15 = 0;
LABEL_40:

        goto LABEL_41;
      }

LABEL_38:

      goto LABEL_39;
    }

    v15 = 0;
  }

LABEL_41:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKSummarySharingEntry allocWithZone:a3];
  LOBYTE(v6) = self->_isPaused;
  return [(HKSummarySharingEntry *)v4 initWithUUID:self->_UUID primaryContactIdentifier:self->_primaryContactIdentifier allContactIdentifiers:self->_allContactIdentifiers firstName:self->_firstName lastName:self->_lastName userWheelchairMode:self->_userWheelchairMode type:self->_type status:self->_status notificationStatus:self->_notificationStatus direction:self->_direction modificationDate:self->_modificationDate dateAccepted:self->_dateAccepted dateInvited:self->_dateInvited profileIdentifier:self->_profileIdentifier CNContactIdentifier:self->_CNContactIdentifier isPaused:v6];
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_primaryContactIdentifier forKey:@"PrimaryContactIdentifier"];
  [v5 encodeObject:self->_allContactIdentifiers forKey:@"AllContactIdentifiersKey"];
  [v5 encodeObject:self->_firstName forKey:@"FirstName"];
  [v5 encodeObject:self->_lastName forKey:@"LastName"];
  [v5 encodeInteger:self->_userWheelchairMode forKey:@"UserWheelchairModeKey"];
  [v5 encodeInteger:self->_type forKey:@"Type"];
  [v5 encodeInteger:self->_status forKey:@"Status"];
  [v5 encodeInteger:self->_notificationStatus forKey:@"NotificationStatus"];
  [v5 encodeInteger:self->_direction forKey:@"Direction"];
  [v5 encodeObject:self->_modificationDate forKey:@"ModificationDate"];
  [v5 encodeObject:self->_dateAccepted forKey:@"DateAccepted"];
  [v5 encodeObject:self->_dateInvited forKey:@"DateInvited"];
  [v5 encodeObject:self->_profileIdentifier forKey:@"ProfileIdentifier"];
  [v5 encodeObject:self->_CNContactIdentifier forKey:@"CNContactIdentifierKey"];
  [v5 encodeBool:self->_isPaused forKey:@"IsPaused"];
}

- (HKSummarySharingEntry)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryContactIdentifier"];
  v14 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AllContactIdentifiersKey"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"FirstName"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LastName"];
  v18 = [v3 decodeIntegerForKey:@"UserWheelchairModeKey"];
  v17 = [v3 decodeIntegerForKey:@"Type"];
  v15 = [v3 decodeIntegerForKey:@"Status"];
  v4 = [v3 decodeIntegerForKey:@"NotificationStatus"];
  v5 = [v3 decodeIntegerForKey:@"Direction"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DateAccepted"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DateInvited"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ProfileIdentifier"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CNContactIdentifierKey"];
  v11 = [v3 decodeBoolForKey:@"IsPaused"];

  LOBYTE(v13) = v11;
  v23 = [(HKSummarySharingEntry *)self initWithUUID:v21 primaryContactIdentifier:v16 allContactIdentifiers:v14 firstName:v20 lastName:v19 userWheelchairMode:v18 type:v17 status:v15 notificationStatus:v4 direction:v5 modificationDate:v6 dateAccepted:v7 dateInvited:v8 profileIdentifier:v9 CNContactIdentifier:v10 isPaused:v13];

  return v23;
}

@end