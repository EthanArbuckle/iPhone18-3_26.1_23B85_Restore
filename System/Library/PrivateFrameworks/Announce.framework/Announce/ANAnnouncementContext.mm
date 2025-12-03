@interface ANAnnouncementContext
+ (id)contextFromDictionary:(id)dictionary;
+ (id)contextFromUserInfo:(id)info;
- (ANAnnouncementContext)initWithCoder:(id)coder;
- (ANAnnouncementContext)initWithDictionary:(id)dictionary;
- (BOOL)isEqualToContext:(id)context;
- (NSDictionary)contextDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANAnnouncementContext

- (ANAnnouncementContext)initWithDictionary:(id)dictionary
{
  v78 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v73.receiver = self;
  v73.super_class = ANAnnouncementContext;
  v5 = [(ANAnnouncementContext *)&v73 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AnnouncementID"];
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

    v9 = [dictionaryCopy objectForKeyedSubscript:@"GroupID"];
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

    v12 = [dictionaryCopy objectForKeyedSubscript:@"AnnouncerID"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"AnnouncerName"];
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

    v18 = [dictionaryCopy objectForKeyedSubscript:@"AnnouncerUserID"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:@"AnnouncerUserUniqueID"];
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

    v24 = [dictionaryCopy objectForKeyedSubscript:@"AnnouncerIsAccessory"];
    v25 = v24;
    if (v24)
    {
      LOBYTE(v24) = [v24 BOOLValue];
    }

    v5->_announcerIsAccessory = v24;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"HomeName"];
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

    v29 = [dictionaryCopy objectForKeyedSubscript:@"HomeID"];
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

    v32 = [dictionaryCopy objectForKeyedSubscript:@"ProductType"];
    if (v32)
    {
      v33 = [dictionaryCopy objectForKeyedSubscript:@"ProductType"];
      *&v5->_productType = [v33 integerValue];
    }

    else
    {
      *&v5->_productType = -1;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"ProductTypeOverride"];
    if (v34)
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"ProductTypeOverride"];
      v5->_productTypeOverride = [v35 unsignedIntegerValue];
    }

    else
    {
      v5->_productTypeOverride = 0;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"ServiceType"];
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

    v39 = [dictionaryCopy objectForKeyedSubscript:@"DeviceClass"];
    if (v39)
    {
      v40 = [dictionaryCopy objectForKeyedSubscript:@"DeviceClass"];
      v5->_deviceClass = [v40 integerValue];
    }

    else
    {
      v5->_deviceClass = -1;
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"SystemImageName"];
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

    v44 = [dictionaryCopy objectForKeyedSubscript:@"Rooms"];
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

    v48 = [dictionaryCopy objectForKeyedSubscript:@"Zones"];
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

    v51 = [dictionaryCopy objectForKeyedSubscript:@"AudioFilePath"];
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

    v59 = [dictionaryCopy objectForKeyedSubscript:@"Subtitle"];
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

    v62 = [dictionaryCopy objectForKeyedSubscript:@"TranscriptionText"];
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

    v65 = [dictionaryCopy objectForKeyedSubscript:@"Played"];
    if (v65)
    {
      v66 = [dictionaryCopy objectForKeyedSubscript:@"Played"];
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

+ (id)contextFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[ANAnnouncementContext alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

+ (id)contextFromUserInfo:(id)info
{
  infoCopy = info;
  v4 = [[ANAnnouncementContext alloc] initWithUserInfo:infoCopy];

  return v4;
}

- (id)description
{
  contextDictionary = [(ANAnnouncementContext *)self contextDictionary];
  v3 = [contextDictionary description];

  return v3;
}

- (NSDictionary)contextDictionary
{
  v3 = objc_opt_new();
  announcementID = [(ANAnnouncementContext *)self announcementID];
  [v3 setObject:announcementID forKeyedSubscript:@"AnnouncementID"];

  groupID = [(ANAnnouncementContext *)self groupID];
  [v3 setObject:groupID forKeyedSubscript:@"GroupID"];

  announcerID = [(ANAnnouncementContext *)self announcerID];
  [v3 setObject:announcerID forKeyedSubscript:@"AnnouncerID"];

  announcerUserUniqueID = [(ANAnnouncementContext *)self announcerUserUniqueID];
  [v3 setObject:announcerUserUniqueID forKeyedSubscript:@"AnnouncerUserUniqueID"];

  announcerName = [(ANAnnouncementContext *)self announcerName];
  [v3 setObject:announcerName forKeyedSubscript:@"AnnouncerName"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext announcerIsAccessory](self, "announcerIsAccessory")}];
  [v3 setObject:v9 forKeyedSubscript:@"AnnouncerIsAccessory"];

  homeName = [(ANAnnouncementContext *)self homeName];
  [v3 setObject:homeName forKeyedSubscript:@"HomeName"];

  homeID = [(ANAnnouncementContext *)self homeID];
  [v3 setObject:homeID forKeyedSubscript:@"HomeID"];

  rooms = [(ANAnnouncementContext *)self rooms];
  [v3 setObject:rooms forKeyedSubscript:@"Rooms"];

  zones = [(ANAnnouncementContext *)self zones];
  [v3 setObject:zones forKeyedSubscript:@"Zones"];

  announcementAudioPath = [(ANAnnouncementContext *)self announcementAudioPath];
  [v3 setObject:announcementAudioPath forKeyedSubscript:@"AudioFilePath"];

  announcementAudioURL = [(ANAnnouncementContext *)self announcementAudioURL];
  [v3 setObject:announcementAudioURL forKeyedSubscript:@"AudioFileURL"];

  audioFileDuration = [(ANAnnouncementContext *)self audioFileDuration];
  [v3 setObject:audioFileDuration forKeyedSubscript:@"AudioFileDuration"];

  announcerUserID = [(ANAnnouncementContext *)self announcerUserID];
  [v3 setObject:announcerUserID forKeyedSubscript:@"AnnouncerUserID"];

  subtitle = [(ANAnnouncementContext *)self subtitle];
  [v3 setObject:subtitle forKeyedSubscript:@"Subtitle"];

  v19 = [MEMORY[0x277CCABB0] numberWithLong:{-[ANAnnouncementContext productType](self, "productType")}];
  [v3 setObject:v19 forKeyedSubscript:@"ProductType"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementContext productTypeOverride](self, "productTypeOverride")}];
  [v3 setObject:v20 forKeyedSubscript:@"ProductTypeOverride"];

  serviceType = [(ANAnnouncementContext *)self serviceType];
  [v3 setObject:serviceType forKeyedSubscript:@"ServiceType"];

  v22 = [MEMORY[0x277CCABB0] numberWithInt:{-[ANAnnouncementContext deviceClass](self, "deviceClass")}];
  [v3 setObject:v22 forKeyedSubscript:@"DeviceClass"];

  systemImage = [(ANAnnouncementContext *)self systemImage];
  [v3 setObject:systemImage forKeyedSubscript:@"SystemImageName"];

  transcriptionText = [(ANAnnouncementContext *)self transcriptionText];
  [v3 setObject:transcriptionText forKeyedSubscript:@"TranscriptionText"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext played](self, "played")}];
  [v3 setObject:v25 forKeyedSubscript:@"Played"];

  v26 = [v3 copy];

  return v26;
}

- (BOOL)isEqualToContext:(id)context
{
  contextCopy = context;
  announcementID = [(ANAnnouncementContext *)self announcementID];
  announcementID2 = [contextCopy announcementID];
  if ([announcementID isEqualToString:announcementID2])
  {
    groupID = [(ANAnnouncementContext *)self groupID];
    groupID2 = [contextCopy groupID];
    if ([groupID isEqualToString:groupID2])
    {
      announcerID = [(ANAnnouncementContext *)self announcerID];
      announcerID2 = [contextCopy announcerID];
      if ([announcerID isEqualToString:announcerID2])
      {
        announcerName = [(ANAnnouncementContext *)self announcerName];
        announcerName2 = [contextCopy announcerName];
        if ([announcerName isEqualToString:announcerName2])
        {
          v62 = announcerName2;
          announcerUserID = [(ANAnnouncementContext *)self announcerUserID];
          announcerUserID2 = [contextCopy announcerUserID];
          v61 = announcerUserID;
          if ([announcerUserID isEqualToString:?])
          {
            announcerUserUniqueID = [(ANAnnouncementContext *)self announcerUserUniqueID];
            announcerUserUniqueID2 = [contextCopy announcerUserUniqueID];
            v59 = announcerUserUniqueID;
            v15 = [announcerUserUniqueID isEqualToString:?];
            announcerName2 = v62;
            if (v15)
            {
              v57 = announcerName;
              announcerIsAccessory = [(ANAnnouncementContext *)self announcerIsAccessory];
              if (announcerIsAccessory == [contextCopy announcerIsAccessory])
              {
                homeName = [(ANAnnouncementContext *)self homeName];
                [contextCopy homeName];
                v55 = v56 = homeName;
                if ([homeName isEqualToString:?])
                {
                  homeID = [(ANAnnouncementContext *)self homeID];
                  homeID2 = [contextCopy homeID];
                  v54 = homeID;
                  if ([homeID isEqualToString:?] && (v20 = -[ANAnnouncementContext productType](self, "productType"), v20 == objc_msgSend(contextCopy, "productType")) && (v21 = -[ANAnnouncementContext productTypeOverride](self, "productTypeOverride"), v21 == objc_msgSend(contextCopy, "productTypeOverride")))
                  {
                    serviceType = [(ANAnnouncementContext *)self serviceType];
                    serviceType2 = [contextCopy serviceType];
                    v52 = serviceType;
                    if ([serviceType isEqualToString:?] && (v23 = -[ANAnnouncementContext deviceClass](self, "deviceClass"), v23 == objc_msgSend(contextCopy, "deviceClass")))
                    {
                      systemImage = [(ANAnnouncementContext *)self systemImage];
                      systemImage2 = [contextCopy systemImage];
                      v50 = systemImage;
                      if ([systemImage isEqualToString:?])
                      {
                        rooms = [(ANAnnouncementContext *)self rooms];
                        rooms2 = [contextCopy rooms];
                        if ([rooms isEqualToDictionary:?])
                        {
                          zones = [(ANAnnouncementContext *)self zones];
                          zones2 = [contextCopy zones];
                          v47 = zones;
                          if ([zones isEqualToDictionary:?])
                          {
                            announcementAudioURL = [(ANAnnouncementContext *)self announcementAudioURL];
                            announcementAudioURL2 = [contextCopy announcementAudioURL];
                            v45 = announcementAudioURL;
                            if ([announcementAudioURL isEqual:?])
                            {
                              announcementAudioPath = [(ANAnnouncementContext *)self announcementAudioPath];
                              announcementAudioPath2 = [contextCopy announcementAudioPath];
                              v43 = announcementAudioPath;
                              if ([announcementAudioPath isEqualToString:?])
                              {
                                audioFileDuration = [(ANAnnouncementContext *)self audioFileDuration];
                                audioFileDuration2 = [contextCopy audioFileDuration];
                                v41 = audioFileDuration;
                                if ([audioFileDuration isEqualToNumber:?])
                                {
                                  subtitle = [(ANAnnouncementContext *)self subtitle];
                                  subtitle2 = [contextCopy subtitle];
                                  v39 = subtitle;
                                  if ([subtitle isEqualToString:?])
                                  {
                                    transcriptionText = [(ANAnnouncementContext *)self transcriptionText];
                                    transcriptionText2 = [contextCopy transcriptionText];
                                    v37 = transcriptionText;
                                    v33 = transcriptionText;
                                    v34 = transcriptionText2;
                                    if ([v33 isEqualToString:?])
                                    {
                                      played = [(ANAnnouncementContext *)self played];
                                      v17 = played ^ [contextCopy played] ^ 1;
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

                        announcerName = v57;
                        announcerName2 = v62;
                      }

                      else
                      {
                        LOBYTE(v17) = 0;
                        announcerName = v57;
                      }
                    }

                    else
                    {
                      LOBYTE(v17) = 0;
                      announcerName = v57;
                    }
                  }

                  else
                  {
                    LOBYTE(v17) = 0;
                    announcerName = v57;
                  }
                }

                else
                {
                  LOBYTE(v17) = 0;
                  announcerName = v57;
                }
              }

              else
              {
                LOBYTE(v17) = 0;
                announcerName = v57;
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
            announcerName2 = v62;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  announcementID = [(ANAnnouncementContext *)self announcementID];
  [coderCopy encodeObject:announcementID forKey:@"AnnouncementID"];

  groupID = [(ANAnnouncementContext *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"GroupID"];

  announcerID = [(ANAnnouncementContext *)self announcerID];
  [coderCopy encodeObject:announcerID forKey:@"AnnouncerID"];

  announcerUserID = [(ANAnnouncementContext *)self announcerUserID];
  [coderCopy encodeObject:announcerUserID forKey:@"AnnouncerUserID"];

  announcerUserUniqueID = [(ANAnnouncementContext *)self announcerUserUniqueID];
  [coderCopy encodeObject:announcerUserUniqueID forKey:@"AnnouncerUserUniqueID"];

  announcerName = [(ANAnnouncementContext *)self announcerName];
  [coderCopy encodeObject:announcerName forKey:@"AnnouncerName"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext announcerIsAccessory](self, "announcerIsAccessory")}];
  [coderCopy encodeObject:v11 forKey:@"AnnouncerIsAccessory"];

  homeName = [(ANAnnouncementContext *)self homeName];
  [coderCopy encodeObject:homeName forKey:@"HomeName"];

  homeID = [(ANAnnouncementContext *)self homeID];
  [coderCopy encodeObject:homeID forKey:@"HomeID"];

  rooms = [(ANAnnouncementContext *)self rooms];
  [coderCopy encodeObject:rooms forKey:@"Rooms"];

  zones = [(ANAnnouncementContext *)self zones];
  [coderCopy encodeObject:zones forKey:@"Zones"];

  announcementAudioURL = [(ANAnnouncementContext *)self announcementAudioURL];
  [coderCopy encodeObject:announcementAudioURL forKey:@"AudioFileURL"];

  announcementAudioPath = [(ANAnnouncementContext *)self announcementAudioPath];
  [coderCopy encodeObject:announcementAudioPath forKey:@"AudioFilePath"];

  audioFileDuration = [(ANAnnouncementContext *)self audioFileDuration];
  [coderCopy encodeObject:audioFileDuration forKey:@"AudioFileDuration"];

  subtitle = [(ANAnnouncementContext *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"Subtitle"];

  v20 = [MEMORY[0x277CCABB0] numberWithLong:{-[ANAnnouncementContext productType](self, "productType")}];
  [coderCopy encodeObject:v20 forKey:@"ProductType"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementContext productTypeOverride](self, "productTypeOverride")}];
  [coderCopy encodeObject:v21 forKey:@"ProductTypeOverride"];

  serviceType = [(ANAnnouncementContext *)self serviceType];
  [coderCopy encodeObject:serviceType forKey:@"ServiceType"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[ANAnnouncementContext deviceClass](self, "deviceClass")}];
  [coderCopy encodeObject:v23 forKey:@"DeviceClass"];

  systemImage = [(ANAnnouncementContext *)self systemImage];
  [coderCopy encodeObject:systemImage forKey:@"SystemImageName"];

  transcriptionText = [(ANAnnouncementContext *)self transcriptionText];
  [coderCopy encodeObject:transcriptionText forKey:@"TranscriptionText"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementContext played](self, "played")}];
  [coderCopy encodeObject:v26 forKey:@"Played"];
}

- (ANAnnouncementContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = ANAnnouncementContext;
  v5 = [(ANAnnouncementContext *)&v49 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncementID"];
    announcementID = v5->_announcementID;
    v5->_announcementID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GroupID"];
    groupID = v5->_groupID;
    v5->_groupID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerID"];
    announcerID = v5->_announcerID;
    v5->_announcerID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerName"];
    announcerName = v5->_announcerName;
    v5->_announcerName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerUserID"];
    announcerUserID = v5->_announcerUserID;
    v5->_announcerUserID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerUserUniqueID"];
    announcerUserUniqueID = v5->_announcerUserUniqueID;
    v5->_announcerUserUniqueID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncerIsAccessory"];
    v5->_announcerIsAccessory = [v18 BOOLValue];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HomeName"];
    homeName = v5->_homeName;
    v5->_homeName = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HomeID"];
    homeID = v5->_homeID;
    v5->_homeID = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"Rooms"];
    rooms = v5->_rooms;
    v5->_rooms = v26;

    v28 = [coderCopy decodeObjectOfClasses:v25 forKey:@"Zones"];
    zones = v5->_zones;
    v5->_zones = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AudioFileURL"];
    announcementAudioURL = v5->_announcementAudioURL;
    v5->_announcementAudioURL = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AudioFilePath"];
    announcementAudioPath = v5->_announcementAudioPath;
    v5->_announcementAudioPath = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AudioFileDuration"];
    audioFileDuration = v5->_audioFileDuration;
    v5->_audioFileDuration = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    *&v5->_productType = [v38 unsignedIntValue];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductTypeOverride"];
    v5->_productTypeOverride = [v39 unsignedIntegerValue];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServiceType"];
    serviceType = v5->_serviceType;
    v5->_serviceType = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    v5->_deviceClass = [v42 integerValue];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TranscriptionText"];
    transcriptionText = v5->_transcriptionText;
    v5->_transcriptionText = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SystemImageName"];
    systemImage = v5->_systemImage;
    v5->_systemImage = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Played"];
    v5->_played = [v47 BOOLValue];
  }

  return v5;
}

@end