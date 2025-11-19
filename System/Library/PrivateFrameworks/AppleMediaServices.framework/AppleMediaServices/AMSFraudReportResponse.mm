@interface AMSFraudReportResponse
- (AMSFraudReportResponse)init;
- (AMSFraudReportResponse)initWithCoder:(id)a3;
- (AMSFraudReportResponse)initWithNamespace:(id)a3 reportedScore:(unsigned __int8)a4 newScore:(unsigned __int8)a5 evaluatedElementData:(id)a6 proofData:(id)a7 keyID:(id)a8;
- (AMSFraudReportResponse)initWithResponseDictionary:(id)a3 expectedNamespace:(id)a4 expectedReportedScore:(unsigned __int8)a5 keyID:(id)a6 error:(id *)a7;
- (AMSFraudReportResponse)initWithURLResult:(id)a3 keyID:(id)a4;
- (void)_setFinalizedElement:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEvaluatedElement:(id)a3;
- (void)setFinalizedElement:(id)a3;
- (void)setKeyID:(id)a3;
- (void)setNameSpace:(id)a3;
- (void)setProof:(id)a3;
@end

@implementation AMSFraudReportResponse

- (AMSFraudReportResponse)initWithNamespace:(id)a3 reportedScore:(unsigned __int8)a4 newScore:(unsigned __int8)a5 evaluatedElementData:(id)a6 proofData:(id)a7 keyID:(id)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (!v14 || !v15 || !v16)
  {
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nameSpace userInfo:{evaluatedElementData and proofData must all be non-nil", 0}];
    objc_exception_throw(v29);
  }

  v18 = v17;
  v30.receiver = self;
  v30.super_class = AMSFraudReportResponse;
  v19 = [(AMSFraudReportResponse *)&v30 init];
  if (v19)
  {
    v20 = [v14 copy];
    nameSpace = v19->_nameSpace;
    v19->_nameSpace = v20;

    v19->_reportedScore = v12;
    v19->_newScore = v11;
    v22 = [v15 copy];
    evaluatedElementData = v19->_evaluatedElementData;
    v19->_evaluatedElementData = v22;

    v24 = [v16 copy];
    proofData = v19->_proofData;
    v19->_proofData = v24;

    v26 = [v18 copy];
    keyID = v19->_keyID;
    v19->_keyID = v26;
  }

  return v19;
}

- (AMSFraudReportResponse)initWithResponseDictionary:(id)a3 expectedNamespace:(id)a4 expectedReportedScore:(unsigned __int8)a5 keyID:(id)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!v12 || !v13)
  {
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"dictionary and expectedNamespace must all be non-nil" userInfo:0];
    objc_exception_throw(v43);
  }

  v15 = v14;
  v16 = [v12 objectForKeyedSubscript:@"namespace"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;

    if (v17)
    {
      if (!_os_feature_enabled_impl() || ([v17 isEqualToString:v13] & 1) != 0)
      {
        v18 = [v12 objectForKeyedSubscript:@"rs"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;

          if (v19)
          {
            v48 = v19;
            v20 = [v19 unsignedLongLongValue];
            if (_os_feature_enabled_impl())
            {
              if (v20 >= 0x100)
              {
                if (a7)
                {
                  v21 = @"Rs value in fraud score report response body is out of permitted range";
LABEL_42:
                  AMSError(4, v21, 0, 0);
                  *a7 = v23 = 0;
LABEL_44:
                  v24 = v48;
                  goto LABEL_45;
                }

                goto LABEL_43;
              }

              if (v20 != v9)
              {
                if (a7)
                {
                  v21 = @"Rs value in fraud score report response body differs from sent rs value";
                  goto LABEL_42;
                }

LABEL_43:
                v23 = 0;
                goto LABEL_44;
              }
            }

            v25 = [v12 objectForKeyedSubscript:@"ns"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;

              if (v26)
              {
                v27 = [v26 unsignedLongLongValue];
                if (_os_feature_enabled_impl() && v27 >= 0x100)
                {
                  if (a7)
                  {
                    v28 = AMSError(4, @"Ns value in fraud score report response body is out of permitted range", 0, 0);
LABEL_35:
                    v23 = 0;
                    *a7 = v28;
LABEL_38:
                    v24 = v48;
LABEL_39:

LABEL_45:
                    goto LABEL_46;
                  }

                  goto LABEL_37;
                }

                v47 = v26;
                v30 = [v12 objectForKeyedSubscript:@"evaluatedElement"];
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
                      if (a7)
                      {
                        AMSError(4, @"Failed to decode evaluated element string in fraud score report response body", 0, 0);
                        *a7 = v23 = 0;
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
                    v33 = [v12 objectForKeyedSubscript:@"proof"];
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
                          v37 = self;
                          v38 = v36;
                          v39 = [(AMSFraudReportResponse *)v37 initWithNamespace:v17 reportedScore:v20 newScore:v27 evaluatedElementData:v45 proofData:v36 keyID:v15];
                          v36 = v38;
                          self = v39;
                          v23 = v39;
                        }

                        else if (a7)
                        {
                          v42 = AMSError(4, @"Failed to decode proof string in fraud score report response body", 0, 0);
                          v36 = 0;
                          v23 = 0;
                          *a7 = v42;
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
                    if (a7)
                    {
                      v40 = AMSError(7, @"No proof in fraud score report response body", 0, 0);
                      v41 = 0;
                      v23 = 0;
                      *a7 = v40;
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
                if (a7)
                {
                  AMSError(7, @"No evaluated element in fraud score report response body", 0, 0);
                  v35 = 0;
                  *a7 = v23 = 0;
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

            if (a7)
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

        if (a7)
        {
          AMSError(7, @"No rs in fraud score report response body", 0, 0);
          v24 = 0;
          *a7 = v23 = 0;
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        goto LABEL_45;
      }

      if (a7)
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

  if (!a7)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v22 = AMSError(7, @"No namespace in fraud score report response body", 0, 0);
  v17 = 0;
LABEL_16:
  v23 = 0;
  *a7 = v22;
LABEL_46:

  return v23;
}

- (void)_setFinalizedElement:(id)a3
{
  self->_finalizedElement = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)a3
{
  nameSpace = self->_nameSpace;
  v5 = a3;
  [v5 encodeObject:nameSpace forKey:@"namespace"];
  [v5 encodeInteger:self->_reportedScore forKey:@"rs"];
  [v5 encodeInteger:self->_newScore forKey:@"ns"];
  [v5 encodeObject:self->_evaluatedElementData forKey:@"evaluatedElement"];
  [v5 encodeObject:self->_finalizedElement forKey:@"finalizedElement"];
  [v5 encodeObject:self->_proofData forKey:@"proof"];
  [v5 encodeObject:self->_keyID forKey:@"keyID"];
}

- (AMSFraudReportResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = AMSFraudReportResponse;
  v5 = [(AMSFraudReportResponse *)&v22 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finalizedElement"];
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

    v5->_reportedScore = [v4 decodeIntegerForKey:@"rs"];
    v5->_newScore = [v4 decodeIntegerForKey:@"ns"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"evaluatedElement"];
    evaluatedElementData = v5->_evaluatedElementData;
    v5->_evaluatedElementData = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proof"];
    proofData = v5->_proofData;
    v5->_proofData = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyID"];
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

- (AMSFraudReportResponse)initWithURLResult:(id)a3 keyID:(id)a4
{
  v6 = a4;
  v7 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
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

        v25 = [v6 copy];
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

- (void)setNameSpace:(id)a3
{
  self->_nameSpace = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setProof:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
  }

  proofData = self->_proofData;
  self->_proofData = v4;
}

- (void)setEvaluatedElement:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
  }

  evaluatedElementData = self->_evaluatedElementData;
  self->_evaluatedElementData = v4;
}

- (void)setFinalizedElement:(id)a3
{
  self->_finalizedElement = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setKeyID:(id)a3
{
  self->_keyID = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

@end