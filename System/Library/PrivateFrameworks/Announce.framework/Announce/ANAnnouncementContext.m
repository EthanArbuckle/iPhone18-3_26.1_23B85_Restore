@interface ANAnnouncementContext
+ (id)contextFromDictionary:(id)a3;
+ (id)contextFromUserInfo:(id)a3;
- (ANAnnouncementContext)initWithCoder:(id)a3;
- (ANAnnouncementContext)initWithDictionary:(id)a3;
- (BOOL)isEqualToContext:(id)a3;
- (NSDictionary)contextDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANAnnouncementContext

- (ANAnnouncementContext)initWithDictionary:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v73.receiver = self;
  v73.super_class = ANAnnouncementContext;
  v5 = [(ANAnnouncementContext *)&v73 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"AnnouncementID"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_announcementID, v8);

    v9 = [v4 objectForKeyedSubscript:@"GroupID"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_groupID, v11);

    v12 = [v4 objectForKeyedSubscript:@"AnnouncerID"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_announcerID, v14);

    v15 = [v4 objectForKeyedSubscript:@"AnnouncerName"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_announcerName, v17);

    v18 = [v4 objectForKeyedSubscript:@"AnnouncerUserID"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_announcerUserID, v20);

    v21 = [v4 objectForKeyedSubscript:@"AnnouncerUserUniqueID"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_announcerUserUniqueID, v23);

    v24 = [v4 objectForKeyedSubscript:@"AnnouncerIsAccessory"];
    v25 = v24;
    if (v24)
    {
      LOBYTE(v24) = [v24 BOOLValue];
    }

    v5->_announcerIsAccessory = v24;
    v26 = [v4 objectForKeyedSubscript:@"HomeName"];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_homeName, v28);

    v29 = [v4 objectForKeyedSubscript:@"HomeID"];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_homeID, v31);

    v32 = [v4 objectForKeyedSubscript:@"ProductType"];
    if (v32)
    {
      v33 = [v4 objectForKeyedSubscript:@"ProductType"];
      *&v5->_productType = [v33 integerValue];
    }

    else
    {
      *&v5->_productType = -1;
    }

    v34 = [v4 objectForKeyedSubscript:@"ProductTypeOverride"];
    if (v34)
    {
      v35 = [v4 objectForKeyedSubscript:@"ProductTypeOverride"];
      v5->_productTypeOverride = [v35 unsignedIntegerValue];
    }

    else
    {
      v5->_productTypeOverride = 0;
    }

    v36 = [v4 objectForKeyedSubscript:@"ServiceType"];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_serviceType, v38);

    v39 = [v4 objectForKeyedSubscript:@"DeviceClass"];
    if (v39)
    {
      v40 = [v4 objectForKeyedSubscript:@"DeviceClass"];
      v5->_deviceClass = [v40 integerValue];
    }

    else
    {
      v5->_deviceClass = -1;
    }

    v41 = [v4 objectForKeyedSubscript:@"SystemImageName"];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = @"homepod.fill";
    }

    objc_storeStrong(&v5->_systemImage, v43);

    v44 = [v4 objectForKeyedSubscript:@"Rooms"];
    v45 = v44;
    v46 = MEMORY[0x277CBEC10];
    if (v44)
    {
      v47 = v44;
    }

    else
    {
      v47 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v5->_rooms, v47);

    v48 = [v4 objectForKeyedSubscript:@"Zones"];
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v46;
    }

    objc_storeStrong(&v5->_zones, v50);

    v51 = [v4 objectForKeyedSubscript:@"AudioFilePath"];
    v52 = v51;
    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = &stru_2836DAA20;
    }

    v54 = v53;

    v55 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v54];
    announcementAudioURL = v5->_announcementAudioURL;
    v5->_announcementAudioURL = v55;

    objc_storeStrong(&v5->_announcementAudioPath, v53);
    [(NSURL *)v5->_announcementAudioURL audioDuration];
    v57 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    audioFileDuration = v5->_audioFileDuration;
    v5->_audioFileDuration = v57;

    v59 = [v4 objectForKeyedSubscript:@"Subtitle"];
    v60 = v59;
    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_subtitle, v61);

    v62 = [v4 objectForKeyedSubscript:@"TranscriptionText"];
    v63 = v62;
    if (v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = &stru_2836DAA20;
    }

    objc_storeStrong(&v5->_transcriptionText, v64);

    v65 = [v4 objectForKeyedSubscript:@"Played"];
    if (v65)
    {
      v66 = [v4 objectForKeyedSubscript:@"Played"];
      v5->_played = [v66 BOOLValue];
    }

    else
    {
      v5->_played = 0;
    }

    v67 = ANLogHandleAnnouncementContext();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = v5->_announcementAudioURL;
      *buf = 138412546;
      v75 = &stru_2836DAA20;
      v76 = 2112;
      v77 = v68;
      _os_log_impl(&dword_2237C8000, v67, OS_LOG_TYPE_DEFAULT, "%@Announcement Context URL: %@", buf, 0x16u);
    }

    v69 = ANLogHandleAnnouncementContext();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      announcementAudioPath = v5->_announcementAudioPath;
      *buf = 138412546;
      v75 = &stru_2836DAA20;
      v76 = 2112;
      v77 = announcementAudioPath;
      _os_log_impl(&dword_2237C8000, v69, OS_LOG_TYPE_DEFAULT, "%@Announcement Context File Path: %@", buf, 0x16u);
    }
  }

  v71 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)contextFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[ANAnnouncementContext alloc] initWithDictionary:v3];

  return v4;
}

+ (id)contextFromUserInfo:(id)a3
{
  v3 = a3;
  v4 = [[ANAnnouncementContext alloc] initWithUserInfo:v3];

  return v4;
}

- (id)description
{
  v2 = [(ANAnnouncementContext *)self contextDictionary];
  v3 = [v2 description];

  return v3;
}

- (NSDictionary)contextDictionary
{
  v3 = objc_opt_new();
  v4 = [(ANAnnouncementContext *)self announcementID];
  [v3 setObject:v4 forKeyedSubscript:@"AnnouncementID"];

  v5 = [(ANAnnouncementContext *)self groupID];
  [v3 setObject:v5 forKeyedSubscript:@"GroupID"];

  v6 = [(ANAnnouncementContext *)self announcerID];
  [v3 setObject:v6 forKeyedSubscript:@"AnnouncerID"];

  v7 = [(ANAnnouncementContext *)self announcerUserUniqueID];
  [v3 setObject:v7 forKeyedSubscript:@"AnnouncerUserUniqueID"];

  v8 = [(ANAnnouncementContext *)self announcerName];
  [v3 setObject:v8 forKeyedSubscript:@"AnnouncerName"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext announcerIsAccessory](self, "announcerIsAccessory")}];
  [v3 setObject:v9 forKeyedSubscript:@"AnnouncerIsAccessory"];

  v10 = [(ANAnnouncementContext *)self homeName];
  [v3 setObject:v10 forKeyedSubscript:@"HomeName"];

  v11 = [(ANAnnouncementContext *)self homeID];
  [v3 setObject:v11 forKeyedSubscript:@"HomeID"];

  v12 = [(ANAnnouncementContext *)self rooms];
  [v3 setObject:v12 forKeyedSubscript:@"Rooms"];

  v13 = [(ANAnnouncementContext *)self zones];
  [v3 setObject:v13 forKeyedSubscript:@"Zones"];

  v14 = [(ANAnnouncementContext *)self announcementAudioPath];
  [v3 setObject:v14 forKeyedSubscript:@"AudioFilePath"];

  v15 = [(ANAnnouncementContext *)self announcementAudioURL];
  [v3 setObject:v15 forKeyedSubscript:@"AudioFileURL"];

  v16 = [(ANAnnouncementContext *)self audioFileDuration];
  [v3 setObject:v16 forKeyedSubscript:@"AudioFileDuration"];

  v17 = [(ANAnnouncementContext *)self announcerUserID];
  [v3 setObject:v17 forKeyedSubscript:@"AnnouncerUserID"];

  v18 = [(ANAnnouncementContext *)self subtitle];
  [v3 setObject:v18 forKeyedSubscript:@"Subtitle"];

  v19 = [MEMORY[0x277CCABB0] numberWithLong:{-[ANAnnouncementContext productType](self, "productType")}];
  [v3 setObject:v19 forKeyedSubscript:@"ProductType"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementContext productTypeOverride](self, "productTypeOverride")}];
  [v3 setObject:v20 forKeyedSubscript:@"ProductTypeOverride"];

  v21 = [(ANAnnouncementContext *)self serviceType];
  [v3 setObject:v21 forKeyedSubscript:@"ServiceType"];

  v22 = [MEMORY[0x277CCABB0] numberWithInt:{-[ANAnnouncementContext deviceClass](self, "deviceClass")}];
  [v3 setObject:v22 forKeyedSubscript:@"DeviceClass"];

  v23 = [(ANAnnouncementContext *)self systemImage];
  [v3 setObject:v23 forKeyedSubscript:@"SystemImageName"];

  v24 = [(ANAnnouncementContext *)self transcriptionText];
  [v3 setObject:v24 forKeyedSubscript:@"TranscriptionText"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext played](self, "played")}];
  [v3 setObject:v25 forKeyedSubscript:@"Played"];

  v26 = [v3 copy];

  return v26;
}

- (BOOL)isEqualToContext:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementContext *)self announcementID];
  v6 = [v4 announcementID];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(ANAnnouncementContext *)self groupID];
    v8 = [v4 groupID];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(ANAnnouncementContext *)self announcerID];
      v10 = [v4 announcerID];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(ANAnnouncementContext *)self announcerName];
        v12 = [v4 announcerName];
        if ([v11 isEqualToString:v12])
        {
          v62 = v12;
          v13 = [(ANAnnouncementContext *)self announcerUserID];
          v60 = [v4 announcerUserID];
          v61 = v13;
          if ([v13 isEqualToString:?])
          {
            v14 = [(ANAnnouncementContext *)self announcerUserUniqueID];
            v58 = [v4 announcerUserUniqueID];
            v59 = v14;
            v15 = [v14 isEqualToString:?];
            v12 = v62;
            if (v15)
            {
              v57 = v11;
              v16 = [(ANAnnouncementContext *)self announcerIsAccessory];
              if (v16 == [v4 announcerIsAccessory])
              {
                v18 = [(ANAnnouncementContext *)self homeName];
                [v4 homeName];
                v55 = v56 = v18;
                if ([v18 isEqualToString:?])
                {
                  v19 = [(ANAnnouncementContext *)self homeID];
                  v53 = [v4 homeID];
                  v54 = v19;
                  if ([v19 isEqualToString:?] && (v20 = -[ANAnnouncementContext productType](self, "productType"), v20 == objc_msgSend(v4, "productType")) && (v21 = -[ANAnnouncementContext productTypeOverride](self, "productTypeOverride"), v21 == objc_msgSend(v4, "productTypeOverride")))
                  {
                    v22 = [(ANAnnouncementContext *)self serviceType];
                    v51 = [v4 serviceType];
                    v52 = v22;
                    if ([v22 isEqualToString:?] && (v23 = -[ANAnnouncementContext deviceClass](self, "deviceClass"), v23 == objc_msgSend(v4, "deviceClass")))
                    {
                      v24 = [(ANAnnouncementContext *)self systemImage];
                      v49 = [v4 systemImage];
                      v50 = v24;
                      if ([v24 isEqualToString:?])
                      {
                        v25 = [(ANAnnouncementContext *)self rooms];
                        v48 = [v4 rooms];
                        if ([v25 isEqualToDictionary:?])
                        {
                          v26 = [(ANAnnouncementContext *)self zones];
                          v46 = [v4 zones];
                          v47 = v26;
                          if ([v26 isEqualToDictionary:?])
                          {
                            v27 = [(ANAnnouncementContext *)self announcementAudioURL];
                            v44 = [v4 announcementAudioURL];
                            v45 = v27;
                            if ([v27 isEqual:?])
                            {
                              v28 = [(ANAnnouncementContext *)self announcementAudioPath];
                              v42 = [v4 announcementAudioPath];
                              v43 = v28;
                              if ([v28 isEqualToString:?])
                              {
                                v29 = [(ANAnnouncementContext *)self audioFileDuration];
                                v40 = [v4 audioFileDuration];
                                v41 = v29;
                                if ([v29 isEqualToNumber:?])
                                {
                                  v30 = [(ANAnnouncementContext *)self subtitle];
                                  v38 = [v4 subtitle];
                                  v39 = v30;
                                  if ([v30 isEqualToString:?])
                                  {
                                    v31 = [(ANAnnouncementContext *)self transcriptionText];
                                    v32 = [v4 transcriptionText];
                                    v37 = v31;
                                    v33 = v31;
                                    v34 = v32;
                                    if ([v33 isEqualToString:?])
                                    {
                                      v35 = [(ANAnnouncementContext *)self played];
                                      v17 = v35 ^ [v4 played] ^ 1;
                                    }

                                    else
                                    {
                                      LOBYTE(v17) = 0;
                                    }
                                  }

                                  else
                                  {
                                    LOBYTE(v17) = 0;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v17) = 0;
                                }
                              }

                              else
                              {
                                LOBYTE(v17) = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v17) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v17) = 0;
                          }
                        }

                        else
                        {
                          LOBYTE(v17) = 0;
                        }

                        v11 = v57;
                        v12 = v62;
                      }

                      else
                      {
                        LOBYTE(v17) = 0;
                        v11 = v57;
                      }
                    }

                    else
                    {
                      LOBYTE(v17) = 0;
                      v11 = v57;
                    }
                  }

                  else
                  {
                    LOBYTE(v17) = 0;
                    v11 = v57;
                  }
                }

                else
                {
                  LOBYTE(v17) = 0;
                  v11 = v57;
                }
              }

              else
              {
                LOBYTE(v17) = 0;
                v11 = v57;
              }
            }

            else
            {
              LOBYTE(v17) = 0;
            }
          }

          else
          {
            LOBYTE(v17) = 0;
            v12 = v62;
          }
        }

        else
        {
          LOBYTE(v17) = 0;
        }
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementContext *)self announcementID];
  [v4 encodeObject:v5 forKey:@"AnnouncementID"];

  v6 = [(ANAnnouncementContext *)self groupID];
  [v4 encodeObject:v6 forKey:@"GroupID"];

  v7 = [(ANAnnouncementContext *)self announcerID];
  [v4 encodeObject:v7 forKey:@"AnnouncerID"];

  v8 = [(ANAnnouncementContext *)self announcerUserID];
  [v4 encodeObject:v8 forKey:@"AnnouncerUserID"];

  v9 = [(ANAnnouncementContext *)self announcerUserUniqueID];
  [v4 encodeObject:v9 forKey:@"AnnouncerUserUniqueID"];

  v10 = [(ANAnnouncementContext *)self announcerName];
  [v4 encodeObject:v10 forKey:@"AnnouncerName"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext announcerIsAccessory](self, "announcerIsAccessory")}];
  [v4 encodeObject:v11 forKey:@"AnnouncerIsAccessory"];

  v12 = [(ANAnnouncementContext *)self homeName];
  [v4 encodeObject:v12 forKey:@"HomeName"];

  v13 = [(ANAnnouncementContext *)self homeID];
  [v4 encodeObject:v13 forKey:@"HomeID"];

  v14 = [(ANAnnouncementContext *)self rooms];
  [v4 encodeObject:v14 forKey:@"Rooms"];

  v15 = [(ANAnnouncementContext *)self zones];
  [v4 encodeObject:v15 forKey:@"Zones"];

  v16 = [(ANAnnouncementContext *)self announcementAudioURL];
  [v4 encodeObject:v16 forKey:@"AudioFileURL"];

  v17 = [(ANAnnouncementContext *)self announcementAudioPath];
  [v4 encodeObject:v17 forKey:@"AudioFilePath"];

  v18 = [(ANAnnouncementContext *)self audioFileDuration];
  [v4 encodeObject:v18 forKey:@"AudioFileDuration"];

  v19 = [(ANAnnouncementContext *)self subtitle];
  [v4 encodeObject:v19 forKey:@"Subtitle"];

  v20 = [MEMORY[0x277CCABB0] numberWithLong:{-[ANAnnouncementContext productType](self, "productType")}];
  [v4 encodeObject:v20 forKey:@"ProductType"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementContext productTypeOverride](self, "productTypeOverride")}];
  [v4 encodeObject:v21 forKey:@"ProductTypeOverride"];

  v22 = [(ANAnnouncementContext *)self serviceType];
  [v4 encodeObject:v22 forKey:@"ServiceType"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[ANAnnouncementContext deviceClass](self, "deviceClass")}];
  [v4 encodeObject:v23 forKey:@"DeviceClass"];

  v24 = [(ANAnnouncementContext *)self systemImage];
  [v4 encodeObject:v24 forKey:@"SystemImageName"];

  v25 = [(ANAnnouncementContext *)self transcriptionText];
  [v4 encodeObject:v25 forKey:@"TranscriptionText"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext played](self, "played")}];
  [v4 encodeObject:v26 forKey:@"Played"];
}

- (ANAnnouncementContext)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = ANAnnouncementContext;
  v5 = [(ANAnnouncementContext *)&v49 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncementID"];
    announcementID = v5->_announcementID;
    v5->_announcementID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GroupID"];
    groupID = v5->_groupID;
    v5->_groupID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerID"];
    announcerID = v5->_announcerID;
    v5->_announcerID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerName"];
    announcerName = v5->_announcerName;
    v5->_announcerName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerUserID"];
    announcerUserID = v5->_announcerUserID;
    v5->_announcerUserID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerUserUniqueID"];
    announcerUserUniqueID = v5->_announcerUserUniqueID;
    v5->_announcerUserUniqueID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerIsAccessory"];
    v5->_announcerIsAccessory = [v18 BOOLValue];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HomeName"];
    homeName = v5->_homeName;
    v5->_homeName = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HomeID"];
    homeID = v5->_homeID;
    v5->_homeID = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"Rooms"];
    rooms = v5->_rooms;
    v5->_rooms = v26;

    v28 = [v4 decodeObjectOfClasses:v25 forKey:@"Zones"];
    zones = v5->_zones;
    v5->_zones = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AudioFileURL"];
    announcementAudioURL = v5->_announcementAudioURL;
    v5->_announcementAudioURL = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AudioFilePath"];
    announcementAudioPath = v5->_announcementAudioPath;
    v5->_announcementAudioPath = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AudioFileDuration"];
    audioFileDuration = v5->_audioFileDuration;
    v5->_audioFileDuration = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    *&v5->_productType = [v38 unsignedIntValue];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductTypeOverride"];
    v5->_productTypeOverride = [v39 unsignedIntegerValue];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServiceType"];
    serviceType = v5->_serviceType;
    v5->_serviceType = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    v5->_deviceClass = [v42 integerValue];
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TranscriptionText"];
    transcriptionText = v5->_transcriptionText;
    v5->_transcriptionText = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SystemImageName"];
    systemImage = v5->_systemImage;
    v5->_systemImage = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Played"];
    v5->_played = [v47 BOOLValue];
  }

  return v5;
}

@end