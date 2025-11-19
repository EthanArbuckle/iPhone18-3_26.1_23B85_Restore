@interface ANLocation
- (ANLocation)initWithCoder:(id)a3;
- (ANLocation)initWithHomeID:(id)a3;
- (ANLocation)initWithMessage:(id)a3;
- (id)copy;
- (id)message;
- (unint64_t)target;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANLocation

- (ANLocation)initWithHomeID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ANLocation;
  v6 = [(ANLocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeUUID, a3);
  }

  return v7;
}

- (id)copy
{
  v3 = objc_opt_new();
  v4 = [(ANLocation *)self homeUUID];
  [v3 setHomeUUID:v4];

  v5 = [(ANLocation *)self roomUUIDs];
  v6 = [v5 copy];
  [v3 setRoomUUIDs:v6];

  v7 = [(ANLocation *)self zoneUUIDs];
  v8 = [v7 copy];
  [v3 setZoneUUIDs:v8];

  v9 = [(ANLocation *)self userUUIDs];
  v10 = [v9 copy];
  [v3 setUserUUIDs:v10];

  v11 = [(ANLocation *)self deviceIDs];
  v12 = [v11 copy];
  [v3 setDeviceIDs:v12];

  [v3 setFlags:{-[ANLocation flags](self, "flags")}];
  v13 = [(ANLocation *)self homeLocationStatus];
  [v3 setHomeLocationStatus:v13];

  return v3;
}

- (unint64_t)target
{
  v3 = [(ANLocation *)self zoneUUIDs];
  v4 = [v3 count];

  if (v4 <= 1)
  {
    v6 = [(ANLocation *)self zoneUUIDs];
    v7 = [v6 count] == 1;

    v5 = 4 * v7;
  }

  else
  {
    v5 = 8;
  }

  v8 = [(ANLocation *)self roomUUIDs];
  v9 = [v8 count];

  if (v9 <= 1)
  {
    v11 = [(ANLocation *)self roomUUIDs];
    v10 = [v11 count] == 1;
  }

  else
  {
    v10 = 2;
  }

  return v5 | v10;
}

- (ANLocation)initWithMessage:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 objectForKey:@"home"];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
      if (v6)
      {
        v7 = [(ANLocation *)self initWithHomeID:v6];
        if (v7)
        {
          v45 = v6;
          v46 = v5;
          v8 = [v4 objectForKey:@"flags"];
          v9 = v8;
          if (v8)
          {
            v7->_flags = [v8 unsignedIntegerValue];
          }

          v44 = v9;
          v48 = v7;
          v10 = [v4 objectForKey:@"zones"];
          v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v57 objects:v63 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v58;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v58 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v57 + 1) + 8 * i)];
                if (v17)
                {
                  [v11 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v57 objects:v63 count:16];
            }

            while (v14);
          }

          v43 = v12;

          objc_storeStrong(&v48->_zoneUUIDs, v11);
          v18 = [v4 objectForKey:@"rooms"];
          v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v54;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v54 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:{*(*(&v53 + 1) + 8 * j), v43}];
                if (v25)
                {
                  [v19 addObject:v25];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v53 objects:v62 count:16];
            }

            while (v22);
          }

          objc_storeStrong(&v48->_roomUUIDs, v19);
          v47 = v4;
          v26 = [v4 objectForKey:@"users"];
          v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v28 = v26;
          v29 = [v28 countByEnumeratingWithState:&v49 objects:v61 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v50;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v50 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v49 + 1) + 8 * k)];
                if (v33)
                {
                  [(NSArray *)v27 addObject:v33];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v49 objects:v61 count:16];
            }

            while (v30);
          }

          v7 = v48;
          userUUIDs = v48->_userUUIDs;
          v48->_userUUIDs = v27;
          v35 = v27;

          v4 = v47;
          v36 = [v47 objectForKey:@"devices"];
          deviceIDs = v48->_deviceIDs;
          v48->_deviceIDs = v36;

          v38 = [v47 objectForKey:@"homeLocationStatus"];
          homeLocationStatus = v48->_homeLocationStatus;
          v48->_homeLocationStatus = v38;

          v6 = v45;
          v5 = v46;
        }

        self = v7;
        v40 = self;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

- (id)message
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  v4 = [(NSUUID *)self->_homeUUID UUIDString];
  [v3 setValue:v4 forKey:@"home"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_flags];
  [v3 setValue:v5 forKey:@"flags"];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_zoneUUIDs, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = self->_zoneUUIDs;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v37 + 1) + 8 * i) UUIDString];
        [v6 addObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);
  }

  [v3 setValue:v6 forKey:@"zones"];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_roomUUIDs, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = self->_roomUUIDs;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v33 + 1) + 8 * j) UUIDString];
        [v13 addObject:v19];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v16);
  }

  [v3 setValue:v13 forKey:@"rooms"];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_userUUIDs, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = self->_userUUIDs;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v29 + 1) + 8 * k) UUIDString];
        [v20 addObject:v26];
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v23);
  }

  [v3 setValue:v20 forKey:@"users"];
  [v3 setValue:self->_deviceIDs forKey:@"devices"];
  [v3 setValue:self->_homeLocationStatus forKey:@"homeLocationStatus"];

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ANLocation *)self homeUUID];
  [v4 encodeObject:v5 forKey:@"home"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANLocation flags](self, "flags")}];
  [v4 encodeObject:v6 forKey:@"flags"];

  v7 = [(ANLocation *)self zoneUUIDs];
  [v4 encodeObject:v7 forKey:@"zones"];

  v8 = [(ANLocation *)self roomUUIDs];
  [v4 encodeObject:v8 forKey:@"rooms"];

  v9 = [(ANLocation *)self userUUIDs];
  [v4 encodeObject:v9 forKey:@"users"];

  v10 = [(ANLocation *)self deviceIDs];
  [v4 encodeObject:v10 forKey:@"devices"];
}

- (ANLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  if (v5)
  {
    v6 = [(ANLocation *)self initWithHomeID:v5];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flags"];
      v8 = v7;
      if (v7)
      {
        v6->_flags = [v7 unsignedIntegerValue];
      }

      v9 = MEMORY[0x277CBEB98];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"zones"];
      zoneUUIDs = v6->_zoneUUIDs;
      v6->_zoneUUIDs = v12;

      v14 = [v4 decodeObjectOfClasses:v11 forKey:@"rooms"];
      roomUUIDs = v6->_roomUUIDs;
      v6->_roomUUIDs = v14;

      v16 = [v4 decodeObjectOfClasses:v11 forKey:@"users"];
      userUUIDs = v6->_userUUIDs;
      v6->_userUUIDs = v16;

      v18 = MEMORY[0x277CBEB98];
      v19 = objc_opt_class();
      v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
      v21 = [v4 decodeObjectOfClasses:v20 forKey:@"devices"];
      deviceIDs = v6->_deviceIDs;
      v6->_deviceIDs = v21;
    }

    self = v6;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end