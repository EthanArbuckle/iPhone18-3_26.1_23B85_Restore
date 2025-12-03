@interface ANAnnouncementDataItem(AudioProcessing)
- (BOOL)processAudioWithEffects:()AudioProcessing error:;
@end

@implementation ANAnnouncementDataItem(AudioProcessing)

- (BOOL)processAudioWithEffects:()AudioProcessing error:
{
  v50 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if ([self type] == 1)
    {
      data = [self data];

      if (data)
      {
        v8 = MEMORY[0x277CEAB98];
        data2 = [self data];
        v10 = *MEMORY[0x277CEA9D8];
        v11 = objc_opt_new();
        uUIDString = [v11 UUIDString];
        v13 = [v8 createTemporaryFileWithData:data2 extension:v10 directory:uUIDString];

        if (v13)
        {
          v14 = MEMORY[0x277CEAB98];
          v15 = objc_opt_new();
          uUIDString2 = [v15 UUIDString];
          v17 = [v14 createTemporaryURLWithFileExtension:v10 directory:uUIDString2];

          if (!v17)
          {
            if (a4)
            {
              [MEMORY[0x277CCA9B8] an_errorWithCode:1041 component:*MEMORY[0x277CEA9A8]];
              *a4 = v28 = 0;
            }

            else
            {
              v28 = 0;
            }

LABEL_44:

            goto LABEL_45;
          }

          v18 = ANLogHandleAnnouncementDataItem_AudioProcessing();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = MEMORY[0x277CCABB0];
            [v13 audioDuration];
            [v19 numberWithDouble:?];
            v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v44 = 138412802;
            v45 = &stru_2851BDB18;
            v46 = 2112;
            v47 = v13;
            v48 = 2112;
            v49 = v20;
            _os_log_impl(&dword_23F525000, v18, OS_LOG_TYPE_DEFAULT, "%@Process Audio Input File: %@, Duration: %@", &v44, 0x20u);
          }

          v21 = [MEMORY[0x277CEABC0] process:v13 to:v17 withOptions:a3 error:a4];
          v22 = ANLogHandleAnnouncementDataItem_AudioProcessing();
          v23 = v22;
          if (v21)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v44 = 138412290;
              v45 = &stru_2851BDB18;
              _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_DEFAULT, "%@Audio Processed Succesfully", &v44, 0xCu);
            }

            [v17 audioDuration];
            v25 = v24;
            v26 = ANLogHandleAnnouncementDataItem_AudioProcessing();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v44 = 138412802;
              v45 = &stru_2851BDB18;
              v46 = 2112;
              v47 = v17;
              v48 = 2048;
              v49 = v25;
              _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Process Audio Output File: %@, Duration = %f seconds", &v44, 0x20u);
            }

            if (v25 > 0.0)
            {
              v27 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v17 options:2 error:a4];
              v28 = v27 != 0;
              if (v27)
              {
                [self setData:v27];
              }

              else
              {
                v38 = ANLogHandleAnnouncementDataItem_AudioProcessing();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = *a4;
                  v44 = 138412802;
                  v45 = &stru_2851BDB18;
                  v46 = 2112;
                  v47 = v17;
                  v48 = 2112;
                  v49 = v39;
                  _os_log_impl(&dword_23F525000, v38, OS_LOG_TYPE_ERROR, "%@Failed to load data from file: URL = %@, Error = %@", &v44, 0x20u);
                }
              }

              goto LABEL_42;
            }

            mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
            v36 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA978]];

            if (v36)
            {
              v37 = ANLogHandleAnnouncementDataItem_AudioProcessing();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v44 = 138412290;
                v45 = &stru_2851BDB18;
                _os_log_impl(&dword_23F525000, v37, OS_LOG_TYPE_ERROR, "%@Processed audio file is empty. Using original file.", &v44, 0xCu);
              }

              v28 = 1;
              goto LABEL_42;
            }

            if (a4)
            {
              [MEMORY[0x277CCA9B8] an_errorWithCode:1044 component:*MEMORY[0x277CEA9A8]];
              *a4 = v28 = 0;
LABEL_42:
              mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
              v41 = [mEMORY[0x277CEAB80]2 BOOLForDefault:*MEMORY[0x277CEA908]];

              if ((v41 & 1) == 0)
              {
                [MEMORY[0x277CEAB98] removeItem:v13];
                [MEMORY[0x277CEAB98] removeItem:v17];
              }

              goto LABEL_44;
            }
          }

          else
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v33 = *a4;
              v44 = 138412546;
              v45 = &stru_2851BDB18;
              v46 = 2112;
              v47 = v33;
              _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_ERROR, "%@Failed to process audio data. Error = %@", &v44, 0x16u);
            }

            v34 = +[ANAnalytics shared];
            [v34 error:5019];
          }

          v28 = 0;
          goto LABEL_42;
        }
      }

      if (a4)
      {
        v30 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CEA9A8];
        v32 = 5016;
        goto LABEL_23;
      }
    }

    else if (a4)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CEA9A8];
      v32 = 1042;
LABEL_23:
      [v30 an_errorWithCode:v32 component:v31];
      *a4 = v28 = 0;
      goto LABEL_45;
    }

    v28 = 0;
    goto LABEL_45;
  }

  v29 = ANLogHandleAnnouncementDataItem_AudioProcessing();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v44 = 138412290;
    v45 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v29, OS_LOG_TYPE_DEFAULT, "%@No effects set. Skipping Audio Processing.", &v44, 0xCu);
  }

  v28 = 1;
LABEL_45:
  v42 = *MEMORY[0x277D85DE8];
  return v28;
}

@end