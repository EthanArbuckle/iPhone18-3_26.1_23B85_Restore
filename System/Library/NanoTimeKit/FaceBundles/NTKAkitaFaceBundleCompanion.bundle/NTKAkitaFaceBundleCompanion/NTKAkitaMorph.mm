@interface NTKAkitaMorph
- (BOOL)isEqualToMorph:(id)a3;
- (NTKAkitaMorphConfig)config;
- (id)configurationString;
- (id)initFromConfigurationString:(id)a3;
- (id)initRandomNotMatching:(id)a3;
- (id)initRandomWithBackgroundColor:(unint64_t)a3 notMatching:(id)a4;
- (id)initStandardWithBackgroundColor:(unint64_t)a3;
@end

@implementation NTKAkitaMorph

- (id)initStandardWithBackgroundColor:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NTKAkitaMorph;
  v4 = [(NTKAkitaMorph *)&v10 init];
  if (v4)
  {
    if (qword_15330 != -1)
    {
      sub_60BC();
    }

    v5 = (&unk_15338 + 64 * (a3 % 0x13));
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    *(v4 + 56) = v5[3];
    *(v4 + 40) = v8;
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
  }

  return v4;
}

- (id)initRandomWithBackgroundColor:(unint64_t)a3 notMatching:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = NTKAkitaMorph;
  v7 = [(NTKAkitaMorph *)&v18 init];
  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    if (v6)
    {
      [v6 config];
    }

    else
    {
      *&v8 = -1;
      *(&v8 + 1) = -1;
      v16 = v8;
      v17 = v8;
      v14 = v8;
      v15 = v8;
    }

    v12[0] = v14;
    v12[1] = v15;
    v12[2] = v16;
    v12[3] = v17;
    sub_120C(a3, v12, v13);
    v9 = v13[1];
    *(v7 + 8) = v13[0];
    *(v7 + 24) = v9;
    v10 = v13[3];
    *(v7 + 40) = v13[2];
    *(v7 + 56) = v10;
  }

  return v7;
}

- (id)initRandomNotMatching:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NTKAkitaMorph;
  v5 = [(NTKAkitaMorph *)&v20 init];
  if (v5)
  {
    if (v4)
    {
      [v4 config];
      v6 = *v15;
      v16 = *&v15[8];
      v17 = *&v15[24];
      v18 = *&v15[40];
      v19 = *&v15[56];
    }

    else
    {
      v6 = -1;
      v19 = -1;
      *&v7 = -1;
      *(&v7 + 1) = -1;
      v17 = v7;
      v18 = v7;
      v16 = v7;
    }

    do
    {
      v8 = arc4random_uniform(0x13u);
    }

    while (v6 == v8);
    v10 = v6;
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    sub_120C(v8, &v10, v15);
    *(v5 + 8) = *v15;
    *(v5 + 24) = *&v15[16];
    *(v5 + 40) = *&v15[32];
    *(v5 + 56) = *&v15[48];
  }

  return v5;
}

- (id)initFromConfigurationString:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = NTKAkitaMorph;
  v5 = [(NTKAkitaMorph *)&v32 init];
  if (v5)
  {
    v6 = [v4 dataUsingEncoding:4];
    if (qword_15330 != -1)
    {
      sub_60BC();
    }

    v28 = xmmword_153F8;
    v29 = unk_15408;
    v30 = xmmword_15418;
    v31 = unk_15428;
    v34 = xmmword_153F8;
    v35 = unk_15408;
    v36 = xmmword_15418;
    v37 = unk_15428;
    v33 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v33];
    v8 = v33;
    v9 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v27 = v6;
      v10 = v9;
      objc_opt_class();
      objc_opt_class();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v26 = v10;
      v11 = [v10 allKeys];
      v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v43;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if (!*(*(&v42 + 1) + 8 * i) || (objc_opt_isKindOfClass() & 1) == 0)
            {

              v22 = 0;
              v16 = v26;
              goto LABEL_28;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = v26;
      v17 = [v26 allValues];
      v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v39;
        while (2)
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if (!*(*(&v38 + 1) + 8 * j) || (objc_opt_isKindOfClass() & 1) == 0)
            {

              v22 = 0;
              goto LABEL_28;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v22 = v26;
LABEL_28:

      v6 = v27;
    }

    else
    {
      v22 = 0;
    }

    if (!v8 && v22 && (!sub_2024(&v28, v22, @"backgroundColor", 0x13uLL) || !sub_2024(&v28 + 1, v22, @"hairColor", 0x13uLL) || !sub_2024(&v29, v22, @"skinColor", 0x13uLL) || !sub_2024(&v29 + 1, v22, @"shirtColor", 0x13uLL) || !sub_2024(&v30, v22, @"hairPathIndex", 0xCuLL) || !sub_2024(&v30 + 1, v22, @"bodyPathIndex", 0xAuLL) || !sub_2024(&v31, v22, @"nosePathIndex", 6uLL) || (sub_2024(&v31 + 1, v22, @"lipsPathIndex", 9uLL) & 1) == 0))
    {
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v31 = v37;
    }

    v23 = v29;
    *(v5 + 8) = v28;
    *(v5 + 24) = v23;
    v24 = v31;
    *(v5 + 40) = v30;
    *(v5 + 56) = v24;
  }

  return v5;
}

- (BOOL)isEqualToMorph:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  memset(v5, 0, 40);
  [a3 config];
  return *&self->_config.backgroundColor == 0 && self->_config.skinColor == *&v5[0] && *&self->_config.shirtColor == *(v5 + 8) && *&self->_config.bodyPathIndex == *(&v5[1] + 8) && self->_config.lipsPathIndex == 0;
}

- (id)configurationString
{
  v2 = *&self->_config.skinColor;
  v6[0] = *&self->_config.backgroundColor;
  v6[1] = v2;
  v3 = *&self->_config.nosePathIndex;
  v6[2] = *&self->_config.hairPathIndex;
  v6[3] = v3;
  v4 = sub_E60(v6);

  return v4;
}

- (NTKAkitaMorphConfig)config
{
  v3 = *&self->shirtColor;
  *&retstr->backgroundColor = *&self->hairColor;
  *&retstr->skinColor = v3;
  v4 = *&self->lipsPathIndex;
  *&retstr->hairPathIndex = *&self->bodyPathIndex;
  *&retstr->nosePathIndex = v4;
  return self;
}

@end