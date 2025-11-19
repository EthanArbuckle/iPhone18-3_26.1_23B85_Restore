@interface ATSpatialStreamDescriptions
- (ATSpatialStreamDescriptions)init;
- (ATSpatialStreamDescriptions)initWithFlatIOFormat:(id)a3 type:(int64_t)a4;
- (NSArray)streamParameters;
- (id)description;
@end

@implementation ATSpatialStreamDescriptions

- (NSArray)streamParameters
{
  v2 = [(NSMutableArray *)self->_streamParameters copy];

  return v2;
}

- (ATSpatialStreamDescriptions)initWithFlatIOFormat:(id)a3 type:(int64_t)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v54.receiver = self;
  v54.super_class = ATSpatialStreamDescriptions;
  v8 = [(ATSpatialStreamDescriptions *)&v54 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_44;
  }

  v8->_type = a4;
  objc_storeStrong(&v8->_flatFormat, a3);
  v10 = objc_opt_new();
  streamParameters = v9->_streamParameters;
  v9->_streamParameters = v10;

  type = v9->_type;
  if (!type)
  {
    objc_storeStrong(&v9->_streamFormat, v9->_flatFormat);
    v14 = 1;
    goto LABEL_30;
  }

  if (type != 1)
  {
    v13 = sATSpatialStreamLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = v9->_type;
      *buf = 136315650;
      *&buf[4] = "ATSpatialParameters.mm";
      *&buf[12] = 1024;
      *&buf[14] = 234;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid stream type %d!", buf, 0x18u);
    }

    goto LABEL_8;
  }

  if ([(AVAudioFormat *)v9->_flatFormat channelCount]>= 2 && [(AVAudioFormat *)v9->_flatFormat isInterleaved])
  {
    v13 = sATSpatialStreamLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ATSpatialParameters.mm";
      *&buf[12] = 1024;
      *&buf[14] = 207;
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Expect a deinterleaved format for multi-stream type!", buf, 0x12u);
    }

LABEL_8:

LABEL_42:
    p_super = &v9->super;
    v9 = 0;
    goto LABEL_43;
  }

  v16 = [(AVAudioFormat *)v9->_flatFormat channelCount];
  v17 = v16;
  if (v16 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v16;
  }

  if (v14 <= 0)
  {
LABEL_49:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v18 = [(AVAudioFormat *)v9->_flatFormat streamDescription];
  v19 = *v18;
  v20 = *(v18 + 16);
  v53 = *(v18 + 32);
  v51 = v19;
  v52 = v20;
  if (v17 >= 2)
  {
    if ((BYTE12(v51) & 0x20) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = HIDWORD(v52);
      if (!HIDWORD(v52))
      {
        v22 = (v53 + 7) >> 3;
LABEL_24:
        *(&v52 + 1) = v22 | 0x100000000;
        *&v52 = *(&v52 + 1);
        v55 = 0;
        v56 = &v55;
        v57 = 0x2050000000;
        v25 = getAVAudioChannelLayoutClass::softClass;
        v58 = getAVAudioChannelLayoutClass::softClass;
        if (!getAVAudioChannelLayoutClass::softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getAVAudioChannelLayoutClass_block_invoke;
          *&buf[24] = &unk_1E7ED08E8;
          *&buf[32] = &v55;
          __getAVAudioChannelLayoutClass_block_invoke(buf);
          v25 = v56[3];
        }

        v26 = v25;
        _Block_object_dispose(&v55, 8);
        v24 = [[v26 alloc] initWithLayoutTag:{6553601, v51, v52}];
        v55 = 0;
        v56 = &v55;
        v57 = 0x2050000000;
        v27 = getAVAudioFormatClass::softClass;
        v58 = getAVAudioFormatClass::softClass;
        if (!getAVAudioFormatClass::softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getAVAudioFormatClass_block_invoke;
          *&buf[24] = &unk_1E7ED08E8;
          *&buf[32] = &v55;
          __getAVAudioFormatClass_block_invoke(buf);
          v27 = v56[3];
        }

        v28 = v27;
        _Block_object_dispose(&v55, 8);
        v29 = [[v28 alloc] initWithStreamDescription:&v51 channelLayout:v24];
        streamFormat = v9->_streamFormat;
        v9->_streamFormat = v29;

        goto LABEL_29;
      }
    }

    v22 = DWORD2(v52) / v21;
    goto LABEL_24;
  }

  v23 = v9->_flatFormat;
  v24 = v9->_streamFormat;
  v9->_streamFormat = v23;
LABEL_29:

LABEL_30:
  if (!v9->_streamFormat)
  {
LABEL_47:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_48;
  }

  v31 = v14;
  do
  {
    v32 = [[ATSpatialStreamParameters alloc] initInternalWithFormat:v9->_streamFormat];
    v33 = v32;
    if (!v32)
    {
      v44 = sATSpatialStreamLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = v9->_type;
        v46 = [(AVAudioFormat *)v9->_streamFormat description];
        v47 = v46;
        v48 = [v46 UTF8String];
        *buf = 136315906;
        *&buf[4] = "ATSpatialParameters.mm";
        *&buf[12] = 1024;
        *&buf[14] = 254;
        *&buf[18] = 1024;
        *&buf[20] = v45;
        *&buf[24] = 2080;
        *&buf[26] = v48;
        _os_log_impl(&dword_1B9A08000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: could not create stream params for type %d, format %s!", buf, 0x22u);
      }

      goto LABEL_42;
    }

    if ([v32 isEnabled])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
LABEL_46:
      _os_assert_log();
      _os_crash();
      __break(1u);
      goto LABEL_47;
    }

    v34 = [v33 format];
    v35 = [v34 isEqual:v9->_streamFormat];

    if ((v35 & 1) == 0)
    {
      goto LABEL_46;
    }

    [(NSMutableArray *)v9->_streamParameters addObject:v33];

    --v31;
  }

  while (v31);
  if ([(NSMutableArray *)v9->_streamParameters count]!= v14)
  {
LABEL_48:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_49;
  }

  p_super = sATSpatialStreamLog();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
  {
    v37 = v9->_type;
    v38 = [(AVAudioFormat *)v9->_flatFormat description];
    v39 = v38;
    v40 = [v38 UTF8String];
    v41 = [(AVAudioFormat *)v9->_streamFormat description];
    v42 = v41;
    v43 = [v41 UTF8String];
    *buf = 136316674;
    *&buf[4] = "ATSpatialParameters.mm";
    *&buf[12] = 1024;
    *&buf[14] = 269;
    *&buf[18] = 2048;
    *&buf[20] = v9;
    *&buf[28] = 1024;
    *&buf[30] = v37;
    *&buf[34] = 2080;
    *&buf[36] = v40;
    v60 = 2080;
    v61 = v43;
    v62 = 1024;
    v63 = v14;
    _os_log_impl(&dword_1B9A08000, p_super, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamdescs@%p: type %d, flat format %s, stream format %s, #streams %d", buf, 0x3Cu);
  }

LABEL_43:

LABEL_44:
  v49 = *MEMORY[0x1E69E9840];
  return v9;
}

- (ATSpatialStreamDescriptions)init
{
  [(ATSpatialStreamDescriptions *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<ATSpatialStreamDescriptions@%p: format=%@, streams=[", self, self->_flatFormat];
  for (i = 0; [(NSMutableArray *)self->_streamParameters count]> i; ++i)
  {
    v5 = [(NSMutableArray *)self->_streamParameters objectAtIndex:i];
    if ([v5 isEnabled])
    {
      v6 = [v5 identifier];
      [v3 appendFormat:@"%@", v6];
    }

    else
    {
      [v3 appendFormat:@"d"];
    }

    if ([(NSMutableArray *)self->_streamParameters count]- 1 > i)
    {
      [v3 appendFormat:@", "];
    }
  }

  [v3 appendString:@"]>"];

  return v3;
}

@end