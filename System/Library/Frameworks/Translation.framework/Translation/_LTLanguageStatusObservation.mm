@interface _LTLanguageStatusObservation
+ (id)describeObservations:(id)observations;
- (BOOL)isEqual:(id)equal;
- (_LTLanguageStatusObservation)initWithCoder:(id)coder;
- (_LTLanguageStatusObservation)initWithLocale:(id)locale progress:(double)progress downloadSize:(unint64_t)size status:(int64_t)status rank:(int64_t)rank;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTLanguageStatusObservation

- (id)description
{
  status = self->_status;
  v4 = MEMORY[0x277CCACA8];
  _ltLocaleIdentifier = [(NSLocale *)self->_locale _ltLocaleIdentifier];
  v6 = _ltLocaleIdentifier;
  rank = self->_rank;
  if (status == 1)
  {
    [v4 stringWithFormat:@"%@:%ld Downloading [%f] of %zu", _ltLocaleIdentifier, rank, *&self->_progress, self->_downloadSize];
  }

  else if (status == 2)
  {
    [v4 stringWithFormat:@"%@:%ld Installed", _ltLocaleIdentifier, rank, v10, v11];
  }

  else
  {
    [v4 stringWithFormat:@"%@:%ld Not Installed", _ltLocaleIdentifier, rank, v10, v11];
  }
  v8 = ;

  return v8;
}

- (_LTLanguageStatusObservation)initWithLocale:(id)locale progress:(double)progress downloadSize:(unint64_t)size status:(int64_t)status rank:(int64_t)rank
{
  localeCopy = locale;
  v19.receiver = self;
  v19.super_class = _LTLanguageStatusObservation;
  v13 = [(_LTLanguageStatusObservation *)&v19 init];
  if (v13)
  {
    v14 = [localeCopy copy];
    locale = v13->_locale;
    v13->_locale = v14;

    v13->_isIndeterminateProgress = 0;
    v13->_downloadSize = size;
    v13->_status = status;
    v13->_rank = rank;
    if (status > 1)
    {
      if (status == 2)
      {
        v16 = 1.0;
        goto LABEL_12;
      }

      if (status != 3)
      {
        goto LABEL_13;
      }
    }

    else if (status)
    {
      if (status == 1)
      {
        v16 = fmax(progress, 0.000001);
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

- (_LTLanguageStatusObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _LTLanguageStatusObservation;
  v5 = [(_LTLanguageStatusObservation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v5->_isIndeterminateProgress = [coderCopy decodeBoolForKey:@"isIndeterminateProgress"];
    [coderCopy decodeDoubleForKey:@"progress"];
    v5->_progress = v8;
    v5->_downloadSize = [coderCopy decodeIntegerForKey:@"downloadSize"];
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v5->_rank = [coderCopy decodeIntegerForKey:@"rank"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locale = self->_locale;
  coderCopy = coder;
  [coderCopy encodeObject:locale forKey:@"locale"];
  [coderCopy encodeBool:self->_isIndeterminateProgress forKey:@"isIndeterminateProgress"];
  [coderCopy encodeDouble:@"progress" forKey:self->_progress];
  [coderCopy encodeInteger:self->_downloadSize forKey:@"downloadSize"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeInteger:self->_rank forKey:@"rank"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    status = [(_LTLanguageStatusObservation *)self status];
    if (status == [v5 status] && (-[_LTLanguageStatusObservation progress](self, "progress"), v8 = v7, objc_msgSend(v5, "progress"), v8 == v9) && (v10 = -[_LTLanguageStatusObservation isIndeterminateProgress](self, "isIndeterminateProgress"), v10 == objc_msgSend(v5, "isIndeterminateProgress")))
    {
      locale = [(_LTLanguageStatusObservation *)self locale];
      _ltLocaleIdentifier = [locale _ltLocaleIdentifier];
      locale2 = [v5 locale];
      _ltLocaleIdentifier2 = [locale2 _ltLocaleIdentifier];
      v11 = [_ltLocaleIdentifier isEqualToString:_ltLocaleIdentifier2];
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

- (int64_t)compare:(id)compare
{
  locale = self->_locale;
  compareCopy = compare;
  _ltLocaleIdentifier = [(NSLocale *)locale _ltLocaleIdentifier];
  locale = [compareCopy locale];

  _ltLocaleIdentifier2 = [locale _ltLocaleIdentifier];
  v8 = [_ltLocaleIdentifier compare:_ltLocaleIdentifier2];

  return v8;
}

+ (id)describeObservations:(id)observations
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16[0] = &unk_284DC9948;
  v16[1] = &unk_284DC9960;
  v17[0] = @"🔴";
  v17[1] = @"🟡";
  v16[2] = &unk_284DC9978;
  v17[2] = @"🟢";
  v3 = MEMORY[0x277CBEAC0];
  observationsCopy = observations;
  v5 = [v3 dictionaryWithObjects:v17 forKeys:v16 count:3];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53___LTLanguageStatusObservation_describeObservations___block_invoke;
  v14 = &unk_278B6D2B0;
  v15 = v5;
  v6 = v5;
  v7 = [observationsCopy _ltCompactMap:&v11];

  v8 = [v7 componentsJoinedByString:{@" ", v11, v12, v13, v14}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end