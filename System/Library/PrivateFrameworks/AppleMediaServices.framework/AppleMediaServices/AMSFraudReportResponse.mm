@interface AMSFraudReportResponse
- (AMSFraudReportResponse)init;
- (AMSFraudReportResponse)initWithCoder:(id)coder;
- (AMSFraudReportResponse)initWithNamespace:(id)namespace reportedScore:(unsigned __int8)score newScore:(unsigned __int8)newScore evaluatedElementData:(id)data proofData:(id)proofData keyID:(id)d;
- (AMSFraudReportResponse)initWithResponseDictionary:(id)dictionary expectedNamespace:(id)namespace expectedReportedScore:(unsigned __int8)score keyID:(id)d error:(id *)error;
- (AMSFraudReportResponse)initWithURLResult:(id)result keyID:(id)d;
- (void)_setFinalizedElement:(id)element;
- (void)encodeWithCoder:(id)coder;
- (void)setEvaluatedElement:(id)element;
- (void)setFinalizedElement:(id)element;
- (void)setKeyID:(id)d;
- (void)setNameSpace:(id)space;
- (void)setProof:(id)proof;
@end

@implementation AMSFraudReportResponse

- (AMSFraudReportResponse)initWithNamespace:(id)namespace reportedScore:(unsigned __int8)score newScore:(unsigned __int8)newScore evaluatedElementData:(id)data proofData:(id)proofData keyID:(id)d
{
  newScoreCopy = newScore;
  scoreCopy = score;
  namespaceCopy = namespace;
  dataCopy = data;
  proofDataCopy = proofData;
  dCopy = d;
  if (!namespaceCopy || !dataCopy || !proofDataCopy)
  {
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nameSpace userInfo:{evaluatedElementData and proofData must all be non-nil", 0}];
    objc_exception_throw(v29);
  }

  v18 = dCopy;
  v30.receiver = self;
  v30.super_class = AMSFraudReportResponse;
  v19 = [(AMSFraudReportResponse *)&v30 init];
  if (v19)
  {
    v20 = [namespaceCopy copy];
    nameSpace = v19->_nameSpace;
    v19->_nameSpace = v20;

    v19->_reportedScore = scoreCopy;
    v19->_newScore = newScoreCopy;
    v22 = [dataCopy copy];
    evaluatedElementData = v19->_evaluatedElementData;
    v19->_evaluatedElementData = v22;

    v24 = [proofDataCopy copy];
    proofData = v19->_proofData;
    v19->_proofData = v24;

    v26 = [v18 copy];
    keyID = v19->_keyID;
    v19->_keyID = v26;
  }

  return v19;
}

- (AMSFraudReportResponse)initWithResponseDictionary:(id)dictionary expectedNamespace:(id)namespace expectedReportedScore:(unsigned __int8)score keyID:(id)d error:(id *)error
{
  scoreCopy = score;
  dictionaryCopy = dictionary;
  namespaceCopy = namespace;
  dCopy = d;
  if (!dictionaryCopy || !namespaceCopy)
  {
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"dictionary and expectedNamespace must all be non-nil" userInfo:0];
    objc_exception_throw(v43);
  }

  v15 = dCopy;
  v16 = [dictionaryCopy objectForKeyedSubscript:@"namespace"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;

    if (v17)
    {
      if (!_os_feature_enabled_impl() || ([v17 isEqualToString:namespaceCopy] & 1) != 0)
      {
        v18 = [dictionaryCopy objectForKeyedSubscript:@"rs"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;

          if (v19)
          {
            v48 = v19;
            unsignedLongLongValue = [v19 unsignedLongLongValue];
            if (_os_feature_enabled_impl())
            {
              if (unsignedLongLongValue >= 0x100)
              {
                if (error)
                {
                  v21 = @"Rs value in fraud score report response body is out of permitted range";
LABEL_42:
                  AMSError(4, v21, 0, 0);
                  *error = v23 = 0;
LABEL_44:
                  v24 = v48;
                  goto LABEL_45;
                }

                goto LABEL_43;
              }

              if (unsignedLongLongValue != scoreCopy)
              {
                if (error)
                {
                  v21 = @"Rs value in fraud score report response body differs from sent rs value";
                  goto LABEL_42;
                }

LABEL_43:
                v23 = 0;
                goto LABEL_44;
              }
            }

            v25 = [dictionaryCopy objectForKeyedSubscript:@"ns"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;

              if (v26)
              {
                unsignedLongLongValue2 = [v26 unsignedLongLongValue];
                if (_os_feature_enabled_impl() && unsignedLongLongValue2 >= 0x100)
                {
                  if (error)
                  {
                    v28 = AMSError(4, @"Ns value in fraud score report response body is out of permitted range", 0, 0);
LABEL_35:
                    v23 = 0;
                    *error = v28;
LABEL_38:
                    v24 = v48;
LABEL_39:

LABEL_45:
                    goto LABEL_46;
                  }

                  goto LABEL_37;
                }

                v47 = v26;
                v30 = [dictionaryCopy objectForKeyedSubscript:@"evaluatedElement"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = v30;

                  if (v31)
                  {
                    v46 = v31;
                    v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v31 options:0];
                    if (!v32)
                    {
                      v24 = v48;
                      if (error)
                      {
                        AMSError(4, @"Failed to decode evaluated element string in fraud score report response body", 0, 0);
                        *error = v23 = 0;
                        v32 = 0;
                      }

                      else
                      {
                        v23 = 0;
                      }

                      v35 = v31;
                      v26 = v47;
                      goto LABEL_73;
                    }

                    v45 = v32;
                    v33 = [dictionaryCopy objectForKeyedSubscript:@"proof"];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v34 = v33;

                      v35 = v46;
                      if (v34)
                      {
                        v44 = v34;
                        v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v34 options:0];
                        v26 = v47;
                        if (v36)
                        {
                          selfCopy = self;
                          v38 = v36;
                          v39 = [(AMSFraudReportResponse *)selfCopy initWithNamespace:v17 reportedScore:unsignedLongLongValue newScore:unsignedLongLongValue2 evaluatedElementData:v45 proofData:v36 keyID:v15];
                          v36 = v38;
                          self = v39;
                          v23 = v39;
                        }

                        else if (error)
                        {
                          v42 = AMSError(4, @"Failed to decode proof string in fraud score report response body", 0, 0);
                          v36 = 0;
                          v23 = 0;
                          *error = v42;
                        }

                        else
                        {
                          v23 = 0;
                        }

                        v24 = v48;

                        v41 = v44;
LABEL_72:

                        v32 = v45;
LABEL_73:

LABEL_74:
                        goto LABEL_39;
                      }
                    }

                    else
                    {

                      v35 = v46;
                    }

                    v26 = v47;
                    if (error)
                    {
                      v40 = AMSError(7, @"No proof in fraud score report response body", 0, 0);
                      v41 = 0;
                      v23 = 0;
                      *error = v40;
                    }

                    else
                    {
                      v41 = 0;
                      v23 = 0;
                    }

                    v24 = v48;
                    goto LABEL_72;
                  }
                }

                else
                {
                }

                v26 = v47;
                if (error)
                {
                  AMSError(7, @"No evaluated element in fraud score report response body", 0, 0);
                  v35 = 0;
                  *error = v23 = 0;
                }

                else
                {
                  v35 = 0;
                  v23 = 0;
                }

                v24 = v48;
                goto LABEL_74;
              }
            }

            else
            {
            }

            if (error)
            {
              v28 = AMSError(7, @"No ns in fraud score report response body", 0, 0);
              v26 = 0;
              goto LABEL_35;
            }

            v26 = 0;
LABEL_37:
            v23 = 0;
            goto LABEL_38;
          }
        }

        else
        {
        }

        if (error)
        {
          AMSError(7, @"No rs in fraud score report response body", 0, 0);
          v24 = 0;
          *error = v23 = 0;
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        goto LABEL_45;
      }

      if (error)
      {
        v22 = AMSError(4, @"Namespace in fraud score report response body differs from sent namespace", 0, 0);
        goto LABEL_16;
      }

LABEL_18:
      v23 = 0;
      goto LABEL_46;
    }
  }

  else
  {
  }

  if (!error)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v22 = AMSError(7, @"No namespace in fraud score report response body", 0, 0);
  v17 = 0;
LABEL_16:
  v23 = 0;
  *error = v22;
LABEL_46:

  return v23;
}

- (void)_setFinalizedElement:(id)element
{
  self->_finalizedElement = [element copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)coder
{
  nameSpace = self->_nameSpace;
  coderCopy = coder;
  [coderCopy encodeObject:nameSpace forKey:@"namespace"];
  [coderCopy encodeInteger:self->_reportedScore forKey:@"rs"];
  [coderCopy encodeInteger:self->_newScore forKey:@"ns"];
  [coderCopy encodeObject:self->_evaluatedElementData forKey:@"evaluatedElement"];
  [coderCopy encodeObject:self->_finalizedElement forKey:@"finalizedElement"];
  [coderCopy encodeObject:self->_proofData forKey:@"proof"];
  [coderCopy encodeObject:self->_keyID forKey:@"keyID"];
}

- (AMSFraudReportResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = AMSFraudReportResponse;
  v5 = [(AMSFraudReportResponse *)&v22 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finalizedElement"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    nameSpace = v5->_nameSpace;
    v5->_nameSpace = v6;
    v12 = v6;

    finalizedElement = v5->_finalizedElement;
    v5->_finalizedElement = v8;
    v14 = v8;

    v5->_reportedScore = [coderCopy decodeIntegerForKey:@"rs"];
    v5->_newScore = [coderCopy decodeIntegerForKey:@"ns"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"evaluatedElement"];
    evaluatedElementData = v5->_evaluatedElementData;
    v5->_evaluatedElementData = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proof"];
    proofData = v5->_proofData;
    v5->_proofData = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyID"];
    keyID = v5->_keyID;
    v5->_keyID = v19;

LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (AMSFraudReportResponse)init
{
  v3.receiver = self;
  v3.super_class = AMSFraudReportResponse;
  return [(AMSFraudReportResponse *)&v3 init];
}

- (AMSFraudReportResponse)initWithURLResult:(id)result keyID:(id)d
{
  dCopy = d;
  object = [result object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = object;
  }

  else
  {
    v8 = 0;
  }

  v28.receiver = self;
  v28.super_class = AMSFraudReportResponse;
  v9 = [(AMSFraudReportResponse *)&v28 init];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"namespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    nameSpace = v9->_nameSpace;
    v9->_nameSpace = v11;

    v13 = [v8 objectForKeyedSubscript:@"rs"];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v8 objectForKeyedSubscript:@"rs"];
      v9->_reportedScore = [v14 integerValue];
    }

    else
    {
      v9->_reportedScore = -1;
    }

    v15 = [v8 objectForKeyedSubscript:@"ns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v9->_newScore = [v16 intValue];
    v17 = [v8 objectForKeyedSubscript:@"evaluatedElement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;

      if (v18)
      {
        v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v18 options:0];
        goto LABEL_19;
      }
    }

    else
    {

      v18 = 0;
    }

    v19 = 0;
LABEL_19:
    evaluatedElementData = v9->_evaluatedElementData;
    v9->_evaluatedElementData = v19;

    v21 = [v8 objectForKeyedSubscript:@"proof"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;

      if (v22)
      {
        v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v22 options:0];
LABEL_24:
        proofData = v9->_proofData;
        v9->_proofData = v23;

        v25 = [dCopy copy];
        keyID = v9->_keyID;
        v9->_keyID = v25;

        goto LABEL_25;
      }
    }

    else
    {

      v22 = 0;
    }

    v23 = 0;
    goto LABEL_24;
  }

LABEL_25:

  return v9;
}

- (void)setNameSpace:(id)space
{
  self->_nameSpace = [space copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setProof:(id)proof
{
  proofCopy = proof;
  v6 = proofCopy;
  if (proofCopy)
  {
    proofCopy = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:proofCopy options:0];
  }

  proofData = self->_proofData;
  self->_proofData = proofCopy;
}

- (void)setEvaluatedElement:(id)element
{
  elementCopy = element;
  v6 = elementCopy;
  if (elementCopy)
  {
    elementCopy = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:elementCopy options:0];
  }

  evaluatedElementData = self->_evaluatedElementData;
  self->_evaluatedElementData = elementCopy;
}

- (void)setFinalizedElement:(id)element
{
  self->_finalizedElement = [element copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setKeyID:(id)d
{
  self->_keyID = [d copy];

  MEMORY[0x1EEE66BB8]();
}

@end