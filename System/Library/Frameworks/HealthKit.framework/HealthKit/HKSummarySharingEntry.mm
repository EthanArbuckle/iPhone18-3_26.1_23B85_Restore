@interface HKSummarySharingEntry
- (BOOL)isEqual:(id)equal;
- (HKSummarySharingEntry)init;
- (HKSummarySharingEntry)initWithCoder:(id)coder;
- (HKSummarySharingEntry)initWithUUID:(id)d primaryContactIdentifier:(id)identifier allContactIdentifiers:(id)identifiers firstName:(id)name lastName:(id)lastName userWheelchairMode:(int64_t)mode type:(int64_t)type status:(int64_t)self0 notificationStatus:(int64_t)self1 direction:(unint64_t)self2 modificationDate:(id)self3 dateAccepted:(id)self4 dateInvited:(id)self5 profileIdentifier:(id)self6 CNContactIdentifier:(id)self7 isPaused:(BOOL)self8;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setCNContactIdentifier:(id)identifier;
- (void)_setDateAccepted:(id)accepted;
- (void)_setDateInvited:(id)invited;
- (void)_setProfileIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
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

- (HKSummarySharingEntry)initWithUUID:(id)d primaryContactIdentifier:(id)identifier allContactIdentifiers:(id)identifiers firstName:(id)name lastName:(id)lastName userWheelchairMode:(int64_t)mode type:(int64_t)type status:(int64_t)self0 notificationStatus:(int64_t)self1 direction:(unint64_t)self2 modificationDate:(id)self3 dateAccepted:(id)self4 dateInvited:(id)self5 profileIdentifier:(id)self6 CNContactIdentifier:(id)self7 isPaused:(BOOL)self8
{
  dCopy = d;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  nameCopy = name;
  lastNameCopy = lastName;
  dateCopy = date;
  acceptedCopy = accepted;
  invitedCopy = invited;
  profileIdentifierCopy = profileIdentifier;
  contactIdentifierCopy = contactIdentifier;
  v52.receiver = self;
  v52.super_class = HKSummarySharingEntry;
  v31 = [(HKSummarySharingEntry *)&v52 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_UUID, d);
    v33 = [identifierCopy copy];
    primaryContactIdentifier = v32->_primaryContactIdentifier;
    v32->_primaryContactIdentifier = v33;

    v35 = [identifiersCopy copy];
    allContactIdentifiers = v32->_allContactIdentifiers;
    v32->_allContactIdentifiers = v35;

    v37 = [nameCopy copy];
    firstName = v32->_firstName;
    v32->_firstName = v37;

    v39 = [lastNameCopy copy];
    lastName = v32->_lastName;
    v32->_lastName = v39;

    v32->_userWheelchairMode = mode;
    v32->_type = type;
    v32->_status = status;
    v32->_direction = direction;
    v32->_notificationStatus = notificationStatus;
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    modificationDate = v32->_modificationDate;
    v32->_modificationDate = date;

    objc_storeStrong(&v32->_dateAccepted, accepted);
    objc_storeStrong(&v32->_dateInvited, invited);
    v43 = [profileIdentifierCopy copy];
    profileIdentifier = v32->_profileIdentifier;
    v32->_profileIdentifier = v43;

    v45 = [contactIdentifierCopy copy];
    CNContactIdentifier = v32->_CNContactIdentifier;
    v32->_CNContactIdentifier = v45;

    v32->_isPaused = paused;
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

- (void)_setProfileIdentifier:(id)identifier
{
  v4 = [identifier copy];
  profileIdentifier = self->_profileIdentifier;
  self->_profileIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, profileIdentifier);
}

- (void)_setCNContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  CNContactIdentifier = self->_CNContactIdentifier;
  self->_CNContactIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, CNContactIdentifier);
}

- (void)_setDateAccepted:(id)accepted
{
  v4 = [accepted copy];
  dateAccepted = self->_dateAccepted;
  self->_dateAccepted = v4;

  MEMORY[0x1EEE66BB8](v4, dateAccepted);
}

- (void)_setDateInvited:(id)invited
{
  v4 = [invited copy];
  dateInvited = self->_dateInvited;
  self->_dateInvited = v4;

  MEMORY[0x1EEE66BB8](v4, dateInvited);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      UUID = self->_UUID;
      uUID = [(HKSummarySharingEntry *)v5 UUID];
      LODWORD(UUID) = [(NSUUID *)UUID isEqual:uUID];

      if (!UUID)
      {
        goto LABEL_39;
      }

      primaryContactIdentifier = self->_primaryContactIdentifier;
      primaryContactIdentifier = [(HKSummarySharingEntry *)v5 primaryContactIdentifier];
      v10 = primaryContactIdentifier;
      if (primaryContactIdentifier == primaryContactIdentifier)
      {
      }

      else
      {
        primaryContactIdentifier2 = [(HKSummarySharingEntry *)v5 primaryContactIdentifier];
        if (!primaryContactIdentifier2)
        {
          goto LABEL_38;
        }

        v12 = primaryContactIdentifier2;
        v13 = self->_primaryContactIdentifier;
        primaryContactIdentifier3 = [(HKSummarySharingEntry *)v5 primaryContactIdentifier];
        LODWORD(v13) = [(NSString *)v13 isEqualToString:primaryContactIdentifier3];

        if (!v13)
        {
          goto LABEL_39;
        }
      }

      allContactIdentifiers = self->_allContactIdentifiers;
      allContactIdentifiers = [(HKSummarySharingEntry *)v5 allContactIdentifiers];
      v10 = allContactIdentifiers;
      if (allContactIdentifiers == allContactIdentifiers)
      {
      }

      else
      {
        allContactIdentifiers2 = [(HKSummarySharingEntry *)v5 allContactIdentifiers];
        if (!allContactIdentifiers2)
        {
          goto LABEL_38;
        }

        v19 = allContactIdentifiers2;
        v20 = self->_allContactIdentifiers;
        allContactIdentifiers3 = [(HKSummarySharingEntry *)v5 allContactIdentifiers];
        LODWORD(v20) = [(NSArray *)v20 isEqualToArray:allContactIdentifiers3];

        if (!v20)
        {
          goto LABEL_39;
        }
      }

      firstName = self->_firstName;
      firstName = [(HKSummarySharingEntry *)v5 firstName];
      v10 = firstName;
      if (firstName == firstName)
      {
      }

      else
      {
        firstName2 = [(HKSummarySharingEntry *)v5 firstName];
        if (!firstName2)
        {
          goto LABEL_38;
        }

        v25 = firstName2;
        v26 = self->_firstName;
        firstName3 = [(HKSummarySharingEntry *)v5 firstName];
        LODWORD(v26) = [(NSString *)v26 isEqualToString:firstName3];

        if (!v26)
        {
          goto LABEL_39;
        }
      }

      lastName = self->_lastName;
      lastName = [(HKSummarySharingEntry *)v5 lastName];
      v10 = lastName;
      if (lastName == lastName)
      {
      }

      else
      {
        lastName2 = [(HKSummarySharingEntry *)v5 lastName];
        if (!lastName2)
        {
          goto LABEL_38;
        }

        v31 = lastName2;
        v32 = self->_lastName;
        lastName3 = [(HKSummarySharingEntry *)v5 lastName];
        LODWORD(v32) = [(NSString *)v32 isEqualToString:lastName3];

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
      modificationDate = [(HKSummarySharingEntry *)v5 modificationDate];

      if (modificationDate != modificationDate)
      {
        goto LABEL_39;
      }

      dateAccepted = self->_dateAccepted;
      dateAccepted = [(HKSummarySharingEntry *)v5 dateAccepted];

      if (dateAccepted != dateAccepted)
      {
        goto LABEL_39;
      }

      profileIdentifier = self->_profileIdentifier;
      profileIdentifier = [(HKSummarySharingEntry *)v5 profileIdentifier];

      if (profileIdentifier != profileIdentifier)
      {
        goto LABEL_39;
      }

      CNContactIdentifier = self->_CNContactIdentifier;
      cNContactIdentifier = [(HKSummarySharingEntry *)v5 CNContactIdentifier];
      v10 = cNContactIdentifier;
      if (CNContactIdentifier == cNContactIdentifier)
      {

LABEL_43:
        isPaused = self->_isPaused;
        v15 = isPaused == [(HKSummarySharingEntry *)v5 isPaused];
        goto LABEL_40;
      }

      cNContactIdentifier2 = [(HKSummarySharingEntry *)v5 CNContactIdentifier];
      if (cNContactIdentifier2)
      {
        v48 = cNContactIdentifier2;
        v49 = self->_CNContactIdentifier;
        cNContactIdentifier3 = [(HKSummarySharingEntry *)v5 CNContactIdentifier];
        LODWORD(v49) = [(NSString *)v49 isEqualToString:cNContactIdentifier3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKSummarySharingEntry allocWithZone:zone];
  LOBYTE(v6) = self->_isPaused;
  return [(HKSummarySharingEntry *)v4 initWithUUID:self->_UUID primaryContactIdentifier:self->_primaryContactIdentifier allContactIdentifiers:self->_allContactIdentifiers firstName:self->_firstName lastName:self->_lastName userWheelchairMode:self->_userWheelchairMode type:self->_type status:self->_status notificationStatus:self->_notificationStatus direction:self->_direction modificationDate:self->_modificationDate dateAccepted:self->_dateAccepted dateInvited:self->_dateInvited profileIdentifier:self->_profileIdentifier CNContactIdentifier:self->_CNContactIdentifier isPaused:v6];
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_primaryContactIdentifier forKey:@"PrimaryContactIdentifier"];
  [coderCopy encodeObject:self->_allContactIdentifiers forKey:@"AllContactIdentifiersKey"];
  [coderCopy encodeObject:self->_firstName forKey:@"FirstName"];
  [coderCopy encodeObject:self->_lastName forKey:@"LastName"];
  [coderCopy encodeInteger:self->_userWheelchairMode forKey:@"UserWheelchairModeKey"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeInteger:self->_status forKey:@"Status"];
  [coderCopy encodeInteger:self->_notificationStatus forKey:@"NotificationStatus"];
  [coderCopy encodeInteger:self->_direction forKey:@"Direction"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"ModificationDate"];
  [coderCopy encodeObject:self->_dateAccepted forKey:@"DateAccepted"];
  [coderCopy encodeObject:self->_dateInvited forKey:@"DateInvited"];
  [coderCopy encodeObject:self->_profileIdentifier forKey:@"ProfileIdentifier"];
  [coderCopy encodeObject:self->_CNContactIdentifier forKey:@"CNContactIdentifierKey"];
  [coderCopy encodeBool:self->_isPaused forKey:@"IsPaused"];
}

- (HKSummarySharingEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryContactIdentifier"];
  v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AllContactIdentifiersKey"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstName"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastName"];
  v18 = [coderCopy decodeIntegerForKey:@"UserWheelchairModeKey"];
  v17 = [coderCopy decodeIntegerForKey:@"Type"];
  v15 = [coderCopy decodeIntegerForKey:@"Status"];
  v4 = [coderCopy decodeIntegerForKey:@"NotificationStatus"];
  v5 = [coderCopy decodeIntegerForKey:@"Direction"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateAccepted"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateInvited"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProfileIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CNContactIdentifierKey"];
  v11 = [coderCopy decodeBoolForKey:@"IsPaused"];

  LOBYTE(v13) = v11;
  v23 = [(HKSummarySharingEntry *)self initWithUUID:v21 primaryContactIdentifier:v16 allContactIdentifiers:v14 firstName:v20 lastName:v19 userWheelchairMode:v18 type:v17 status:v15 notificationStatus:v4 direction:v5 modificationDate:v6 dateAccepted:v7 dateInvited:v8 profileIdentifier:v9 CNContactIdentifier:v10 isPaused:v13];

  return v23;
}

@end