@interface MPPlaybackEQSetting
+ (MPPlaybackEQSetting)settingWithName:(id)name;
+ (MPPlaybackEQSetting)settingWithPreset:(int64_t)preset;
+ (NSArray)allSettings;
- (NSString)localizedName;
- (NSString)name;
- (id)_initWithPreset:(int64_t)preset;
- (int)avPreset;
@end

@implementation MPPlaybackEQSetting

- (int)avPreset
{
  preset = self->_preset;
  if (preset)
  {
    return preset - 99;
  }

  else
  {
    return 0;
  }
}

- (NSString)localizedName
{
  preset = self->_preset;
  switch(preset)
  {
    case 'd':
      v4 = @"EQ_ACOUSTIC";
      goto LABEL_26;
    case 'e':
      v4 = @"EQ_BASS_BOOSTER";
      goto LABEL_26;
    case 'f':
      v4 = @"EQ_BASS_REDUCER";
      goto LABEL_26;
    case 'g':
      v4 = @"EQ_CLASSICAL";
      goto LABEL_26;
    case 'h':
      v4 = @"EQ_DANCE";
      goto LABEL_26;
    case 'i':
      v4 = @"EQ_DEEP";
      goto LABEL_26;
    case 'j':
      v4 = @"EQ_ELECTRONIC";
      goto LABEL_26;
    case 'k':
      v4 = @"EQ_FLAT";
      goto LABEL_26;
    case 'l':
      v4 = @"EQ_HIPHOP";
      goto LABEL_26;
    case 'm':
      v4 = @"EQ_JAZZ";
      goto LABEL_26;
    case 'n':
      v4 = @"EQ_LATIN";
      goto LABEL_26;
    case 'o':
      v4 = @"EQ_LOUDNESS";
      goto LABEL_26;
    case 'p':
      v4 = @"EQ_LOUNGE";
      goto LABEL_26;
    case 'q':
      v4 = @"EQ_PIANO";
      goto LABEL_26;
    case 'r':
      v4 = @"EQ_POP";
      goto LABEL_26;
    case 's':
      v4 = @"EQ_RANDB";
      goto LABEL_26;
    case 't':
      v4 = @"EQ_ROCK";
      goto LABEL_26;
    case 'u':
      v4 = @"EQ_SMALL_SPEAKERS";
      goto LABEL_26;
    case 'v':
      v4 = @"EQ_SPOKEN_WORD";
      goto LABEL_26;
    case 'w':
      v4 = @"EQ_TREBLE_BOOSTER";
      goto LABEL_26;
    case 'x':
      v4 = @"EQ_TREBLE_REDUCER";
      goto LABEL_26;
    case 'y':
      v4 = @"EQ_VOCAL_BOOSTER";
      goto LABEL_26;
    default:
      if (preset)
      {
        goto LABEL_27;
      }

      v4 = @"OFF";
LABEL_26:
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v2 = [v5 localizedStringForKey:v4 value:&stru_1F149ECA8 table:@"MediaPlayer"];

LABEL_27:

      return v2;
  }
}

- (NSString)name
{
  preset = self->_preset;
  switch(preset)
  {
    case 'd':
      result = @"Acoustic";
      break;
    case 'e':
      result = @"BassBooster";
      break;
    case 'f':
      result = @"BassReducer";
      break;
    case 'g':
      result = @"Classical";
      break;
    case 'h':
      result = @"Dance";
      break;
    case 'i':
      result = @"Deep";
      break;
    case 'j':
      result = @"Electronic";
      break;
    case 'k':
      result = @"Flat";
      break;
    case 'l':
      result = @"HipHop";
      break;
    case 'm':
      result = @"Jazz";
      break;
    case 'n':
      result = @"Latin";
      break;
    case 'o':
      result = @"Loudness";
      break;
    case 'p':
      result = @"Lounge";
      break;
    case 'q':
      result = @"Piano";
      break;
    case 'r':
      result = @"Pop";
      break;
    case 's':
      result = @"R&B";
      break;
    case 't':
      result = @"Rock";
      break;
    case 'u':
      result = @"SmallSpeakers";
      break;
    case 'v':
      result = @"SpokenWord";
      break;
    case 'w':
      result = @"TrebleBooster";
      break;
    case 'x':
      result = @"TrebleReducer";
      break;
    case 'y':
      result = @"VocalBooster";
      break;
    default:
      if (preset)
      {
        result = @"Unknown";
      }

      else
      {
        result = @"Off";
      }

      break;
  }

  return result;
}

- (id)_initWithPreset:(int64_t)preset
{
  if (preset && (preset - 122) < 0xFFFFFFFFFFFFFFEALL)
  {
    selfCopy = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MPPlaybackEQSetting;
    v5 = [(MPPlaybackEQSetting *)&v7 init];
    if (v5)
    {
      v5->_preset = preset;
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

+ (MPPlaybackEQSetting)settingWithPreset:(int64_t)preset
{
  v3 = [[self alloc] _initWithPreset:preset];

  return v3;
}

+ (MPPlaybackEQSetting)settingWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy == @"Off" || (v6 = [(__CFString *)nameCopy isEqual:@"Off"], v5, (v6 & 1) != 0))
  {
    v7 = 0;
LABEL_70:
    v74 = [self settingWithPreset:v7];
    goto LABEL_71;
  }

  v8 = v5;
  if (v8 == @"Acoustic" || (v9 = v8, v10 = [(__CFString *)v8 isEqual:@"Acoustic"], v9, (v10 & 1) != 0))
  {
    v7 = 100;
    goto LABEL_70;
  }

  v11 = v9;
  if (v11 == @"BassBooster" || (v12 = v11, v13 = [(__CFString *)v11 isEqual:@"BassBooster"], v12, (v13 & 1) != 0))
  {
    v7 = 101;
    goto LABEL_70;
  }

  v14 = v12;
  if (v14 == @"BassReducer" || (v15 = v14, v16 = [(__CFString *)v14 isEqual:@"BassReducer"], v15, (v16 & 1) != 0))
  {
    v7 = 102;
    goto LABEL_70;
  }

  v17 = v15;
  if (v17 == @"Classical" || (v18 = v17, v19 = [(__CFString *)v17 isEqual:@"Classical"], v18, (v19 & 1) != 0))
  {
    v7 = 103;
    goto LABEL_70;
  }

  v20 = v18;
  if (v20 == @"Dance" || (v21 = v20, v22 = [(__CFString *)v20 isEqual:@"Dance"], v21, (v22 & 1) != 0))
  {
    v7 = 104;
    goto LABEL_70;
  }

  v23 = v21;
  if (v23 == @"Deep" || (v24 = v23, v25 = [(__CFString *)v23 isEqual:@"Deep"], v24, (v25 & 1) != 0))
  {
    v7 = 105;
    goto LABEL_70;
  }

  v26 = v24;
  if (v26 == @"Electronic" || (v27 = v26, v28 = [(__CFString *)v26 isEqual:@"Electronic"], v27, (v28 & 1) != 0))
  {
    v7 = 106;
    goto LABEL_70;
  }

  v29 = v27;
  if (v29 == @"Flat" || (v30 = v29, v31 = [(__CFString *)v29 isEqual:@"Flat"], v30, (v31 & 1) != 0))
  {
    v7 = 107;
    goto LABEL_70;
  }

  v32 = v30;
  if (v32 == @"HipHop" || (v33 = v32, v34 = [(__CFString *)v32 isEqual:@"HipHop"], v33, (v34 & 1) != 0))
  {
    v7 = 108;
    goto LABEL_70;
  }

  v35 = v33;
  if (v35 == @"Jazz" || (v36 = v35, v37 = [(__CFString *)v35 isEqual:@"Jazz"], v36, (v37 & 1) != 0))
  {
    v7 = 109;
    goto LABEL_70;
  }

  v38 = v36;
  if (v38 == @"Latin" || (v39 = v38, v40 = [(__CFString *)v38 isEqual:@"Latin"], v39, (v40 & 1) != 0))
  {
    v7 = 110;
    goto LABEL_70;
  }

  v41 = v39;
  if (v41 == @"Loudness" || (v42 = v41, v43 = [(__CFString *)v41 isEqual:@"Loudness"], v42, (v43 & 1) != 0))
  {
    v7 = 111;
    goto LABEL_70;
  }

  v44 = v42;
  if (v44 == @"Lounge" || (v45 = v44, v46 = [(__CFString *)v44 isEqual:@"Lounge"], v45, (v46 & 1) != 0))
  {
    v7 = 112;
    goto LABEL_70;
  }

  v47 = v45;
  if (v47 == @"Piano" || (v48 = v47, v49 = [(__CFString *)v47 isEqual:@"Piano"], v48, (v49 & 1) != 0))
  {
    v7 = 113;
    goto LABEL_70;
  }

  v50 = v48;
  if (v50 == @"Pop" || (v51 = v50, v52 = [(__CFString *)v50 isEqual:@"Pop"], v51, (v52 & 1) != 0))
  {
    v7 = 114;
    goto LABEL_70;
  }

  v53 = v51;
  if (v53 == @"R&B" || (v54 = v53, v55 = [(__CFString *)v53 isEqual:@"R&B"], v54, (v55 & 1) != 0))
  {
    v7 = 115;
    goto LABEL_70;
  }

  v56 = v54;
  if (v56 == @"Rock" || (v57 = v56, v58 = [(__CFString *)v56 isEqual:@"Rock"], v57, (v58 & 1) != 0))
  {
    v7 = 116;
    goto LABEL_70;
  }

  v59 = v57;
  if (v59 == @"SmallSpeakers" || (v60 = v59, v61 = [(__CFString *)v59 isEqual:@"SmallSpeakers"], v60, (v61 & 1) != 0))
  {
    v7 = 117;
    goto LABEL_70;
  }

  v62 = v60;
  if (v62 == @"SpokenWord" || (v63 = v62, v64 = [(__CFString *)v62 isEqual:@"SpokenWord"], v63, (v64 & 1) != 0))
  {
    v7 = 118;
    goto LABEL_70;
  }

  v65 = v63;
  if (v65 == @"TrebleBooster" || (v66 = v65, v67 = [(__CFString *)v65 isEqual:@"TrebleBooster"], v66, (v67 & 1) != 0))
  {
    v7 = 119;
    goto LABEL_70;
  }

  v68 = v66;
  if (v68 == @"TrebleReducer" || (v69 = v68, v70 = [(__CFString *)v68 isEqual:@"TrebleReducer"], v69, (v70 & 1) != 0))
  {
    v7 = 120;
    goto LABEL_70;
  }

  v71 = v69;
  if (v71 == @"VocalBooster" || (v72 = v71, v73 = [(__CFString *)v71 isEqual:@"VocalBooster"], v72, v73))
  {
    v7 = 121;
    goto LABEL_70;
  }

  v74 = 0;
LABEL_71:

  return v74;
}

+ (NSArray)allSettings
{
  v28[23] = *MEMORY[0x1E69E9840];
  v27 = [self settingWithPreset:0];
  v28[0] = v27;
  v26 = [self settingWithPreset:100];
  v28[1] = v26;
  v25 = [self settingWithPreset:101];
  v28[2] = v25;
  v24 = [self settingWithPreset:102];
  v28[3] = v24;
  v23 = [self settingWithPreset:103];
  v28[4] = v23;
  v22 = [self settingWithPreset:104];
  v28[5] = v22;
  v21 = [self settingWithPreset:105];
  v28[6] = v21;
  v20 = [self settingWithPreset:106];
  v28[7] = v20;
  v19 = [self settingWithPreset:107];
  v28[8] = v19;
  v18 = [self settingWithPreset:108];
  v28[9] = v18;
  v17 = [self settingWithPreset:109];
  v28[10] = v17;
  v16 = [self settingWithPreset:110];
  v28[11] = v16;
  v15 = [self settingWithPreset:111];
  v28[12] = v15;
  v3 = [self settingWithPreset:112];
  v28[13] = v3;
  v4 = [self settingWithPreset:113];
  v28[14] = v4;
  v5 = [self settingWithPreset:114];
  v28[15] = v5;
  v6 = [self settingWithPreset:115];
  v28[16] = v6;
  v7 = [self settingWithPreset:116];
  v28[17] = v7;
  v8 = [self settingWithPreset:117];
  v28[18] = v8;
  v9 = [self settingWithPreset:118];
  v28[19] = v9;
  v10 = [self settingWithPreset:119];
  v28[20] = v10;
  v11 = [self settingWithPreset:120];
  v28[21] = v11;
  v12 = [self settingWithPreset:121];
  v28[22] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:23];

  return v14;
}

@end