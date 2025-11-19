@interface _LTLanguageStatusObservation
+ (id)describeObservations:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_LTLanguageStatusObservation)initWithCoder:(id)a3;
- (_LTLanguageStatusObservation)initWithLocale:(id)a3 progress:(double)a4 downloadSize:(unint64_t)a5 status:(int64_t)a6 rank:(int64_t)a7;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTLanguageStatusObservation

- (id)description
{
  status = self->_status;
  v4 = MEMORY[0x277CCACA8];
  v5 = [(NSLocale *)self->_locale _ltLocaleIdentifier];
  v6 = v5;
  rank = self->_rank;
  if (status == 1)
  {
    [v4 stringWithFormat:@"%@:%ld Downloading [%f] of %zu", v5, rank, *&self->_progress, self->_downloadSize];
  }

  else if (status == 2)
  {
    [v4 stringWithFormat:@"%@:%ld Installed", v5, rank, v10, v11];
  }

  else
  {
    [v4 stringWithFormat:@"%@:%ld Not Installed", v5, rank, v10, v11];
  }
  v8 = ;

  return v8;
}

- (_LTLanguageStatusObservation)initWithLocale:(id)a3 progress:(double)a4 downloadSize:(unint64_t)a5 status:(int64_t)a6 rank:(int64_t)a7
{
  v12 = a3;
  v19.receiver = self;
  v19.super_class = _LTLanguageStatusObservation;
  v13 = [(_LTLanguageStatusObservation *)&v19 init];
  if (v13)
  {
    v14 = [v12 copy];
    locale = v13->_locale;
    v13->_locale = v14;

    v13->_isIndeterminateProgress = 0;
    v13->_downloadSize = a5;
    v13->_status = a6;
    v13->_rank = a7;
    if (a6 > 1)
    {
      if (a6 == 2)
      {
        v16 = 1.0;
        goto LABEL_12;
      }

      if (a6 != 3)
      {
        goto LABEL_13;
      }
    }

    else if (a6)
    {
      if (a6 == 1)
      {
        v16 = fmax(a4, 0.000001);
        if (v16 > 0.999999)
        {
          v16 = 0.999999;
        }

        goto LABEL_12;
      }

LABEL_13:
      v17 = v13;
      goto LABEL_14;
    }

    v16 = 0.0;
LABEL_12:
    v13->_progress = v16;
    goto LABEL_13;
  }

LABEL_14:

  return v13;
}

- (_LTLanguageStatusObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _LTLanguageStatusObservation;
  v5 = [(_LTLanguageStatusObservation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v5->_isIndeterminateProgress = [v4 decodeBoolForKey:@"isIndeterminateProgress"];
    [v4 decodeDoubleForKey:@"progress"];
    v5->_progress = v8;
    v5->_downloadSize = [v4 decodeIntegerForKey:@"downloadSize"];
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v5->_rank = [v4 decodeIntegerForKey:@"rank"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  locale = self->_locale;
  v5 = a3;
  [v5 encodeObject:locale forKey:@"locale"];
  [v5 encodeBool:self->_isIndeterminateProgress forKey:@"isIndeterminateProgress"];
  [v5 encodeDouble:@"progress" forKey:self->_progress];
  [v5 encodeInteger:self->_downloadSize forKey:@"downloadSize"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeInteger:self->_rank forKey:@"rank"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_LTLanguageStatusObservation *)self status];
    if (v6 == [v5 status] && (-[_LTLanguageStatusObservation progress](self, "progress"), v8 = v7, objc_msgSend(v5, "progress"), v8 == v9) && (v10 = -[_LTLanguageStatusObservation isIndeterminateProgress](self, "isIndeterminateProgress"), v10 == objc_msgSend(v5, "isIndeterminateProgress")))
    {
      v13 = [(_LTLanguageStatusObservation *)self locale];
      v14 = [v13 _ltLocaleIdentifier];
      v15 = [v5 locale];
      v16 = [v15 _ltLocaleIdentifier];
      v11 = [v14 isEqualToString:v16];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)compare:(id)a3
{
  locale = self->_locale;
  v4 = a3;
  v5 = [(NSLocale *)locale _ltLocaleIdentifier];
  v6 = [v4 locale];

  v7 = [v6 _ltLocaleIdentifier];
  v8 = [v5 compare:v7];

  return v8;
}

+ (id)describeObservations:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16[0] = &unk_284DC9948;
  v16[1] = &unk_284DC9960;
  v17[0] = @"🔴";
  v17[1] = @"🟡";
  v16[2] = &unk_284DC9978;
  v17[2] = @"🟢";
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v17 forKeys:v16 count:3];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53___LTLanguageStatusObservation_describeObservations___block_invoke;
  v14 = &unk_278B6D2B0;
  v15 = v5;
  v6 = v5;
  v7 = [v4 _ltCompactMap:&v11];

  v8 = [v7 componentsJoinedByString:{@" ", v11, v12, v13, v14}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end