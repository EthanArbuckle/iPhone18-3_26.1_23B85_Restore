@interface FamilyMember
- (id)description;
@end

@implementation FamilyMember

- (id)description
{
  v17 = @"firstName";
  if (self)
  {
    v3 = self->_firstName;
    v26 = v3;
    v18 = @"iCloudDSID";
    v4 = self->_iCloudDSID;
    v27 = v4;
    v19 = @"iCloudUsername";
    v5 = self->_iCloudUsername;
    v6 = v5;
    if (self->_currentSignedInUser)
    {
      v7 = @"true";
    }

    else
    {
      v7 = @"false";
    }

    v28 = v5;
    v29 = v7;
    v20 = @"isCurrentSignedInUser";
    v21 = @"iTunesDSID";
    v8 = self->_iTunesDSID;
    v30 = v8;
    v9 = self->_iTunesUsername;
    if (self->_askToBuyEnabled)
    {
      v10 = @"true";
    }

    else
    {
      v10 = @"false";
    }

    if (self->_sharingPurchases)
    {
      v11 = @"true";
    }

    else
    {
      v11 = @"false";
    }

    lastName = self->_lastName;
  }

  else
  {
    v9 = 0;
    v6 = 0;
    v3 = 0;
    v4 = 0;
    v8 = 0;
    lastName = 0;
    v26 = 0;
    v27 = 0;
    v18 = @"iCloudDSID";
    v19 = @"iCloudUsername";
    v10 = @"false";
    v28 = 0;
    v29 = @"false";
    v20 = @"isCurrentSignedInUser";
    v21 = @"iTunesDSID";
    v11 = @"false";
    v30 = 0;
  }

  v22 = @"iTunesUsername";
  v23 = @"isAskToBuyEnabled";
  v31 = v9;
  v32 = v10;
  v24 = @"isSharingPurchases";
  v25 = @"lastName";
  v33 = v11;
  v34 = lastName;
  v13 = lastName;
  v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v17 count:9];

  v15 = [NSString stringWithFormat:@"%@", v14, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34];

  return v15;
}

@end