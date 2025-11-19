@interface AFSpeechToken
- (AFSpeechToken)initWithCoder:(id)a3;
- (AFSpeechToken)initWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)aceToken;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechToken

- (id)dictionaryRepresentation
{
  v26[11] = *MEMORY[0x1E69E9840];
  text = self->_text;
  v24 = text;
  v25[0] = @"text";
  if (!text)
  {
    text = [MEMORY[0x1E695DFB0] null];
  }

  v20 = text;
  v26[0] = text;
  v25[1] = @"phoneSequence";
  phoneSequence = self->_phoneSequence;
  v23 = phoneSequence;
  if (!phoneSequence)
  {
    phoneSequence = [MEMORY[0x1E695DFB0] null];
  }

  v19 = phoneSequence;
  v26[1] = phoneSequence;
  v25[2] = @"ipaPhoneSequence";
  ipaPhoneSequence = self->_ipaPhoneSequence;
  v6 = ipaPhoneSequence;
  if (!ipaPhoneSequence)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v6;
  v26[2] = v6;
  v25[3] = @"confidence";
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_confidenceScore];
  v26[3] = v22;
  v25[4] = @"startTime";
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  v26[4] = v21;
  v25[5] = @"silenceStartTime";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_silenceStartTime];
  v26[5] = v7;
  v25[6] = @"endTime";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
  v26[6] = v8;
  v25[7] = @"removeSpaceBefore";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceBefore];
  v26[7] = v9;
  v25[8] = @"removeSpaceAfter";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceAfter];
  v26[8] = v10;
  v25[9] = @"graphCost";
  graphCost = self->_graphCost;
  v12 = graphCost;
  if (!graphCost)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[9] = v12;
  v25[10] = @"acousticCost";
  acousticCost = self->_acousticCost;
  v14 = acousticCost;
  if (!acousticCost)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[10] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:11];
  if (acousticCost)
  {
    if (graphCost)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (graphCost)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  if (!ipaPhoneSequence)
  {
  }

  if (!v23)
  {
  }

  if (!v24)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (AFSpeechToken)initWithDictionary:(id)a3
{
  v4 = a3;
  v109.receiver = self;
  v109.super_class = AFSpeechToken;
  v5 = [(AFSpeechToken *)&v109 init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [v4 objectForKey:@"text"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v6;
  if (!v9 || (NSClassFromString(v8), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_86:
LABEL_87:
    v102 = 0;
    goto LABEL_88;
  }

  objc_storeStrong(&v5->_text, v6);
  v10 = [v4 objectForKey:@"phoneSequence"];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = v10;
  v14 = v12;
  v15 = 0x1E695D000uLL;
  if (v13 && ([MEMORY[0x1E695DFB0] null], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v13, "isEqual:", v16), v16, !v17))
  {
    NSClassFromString(v14);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else
  {
  }

  v18 = [MEMORY[0x1E695DFB0] null];
  if ([v13 isEqual:v18])
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  objc_storeStrong(&v5->_phoneSequence, v19);

  v20 = [v4 objectForKey:@"confidence"];
  v21 = 0x1E696A000uLL;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = v20;
  v25 = v23;
  v26 = v25;
  if (v24)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
    v28 = [v24 isEqual:v27];

    if (v28)
    {
    }

    else
    {
      NSClassFromString(v26);
      v30 = objc_opt_isKindOfClass();

      if ((v30 & 1) == 0)
      {
LABEL_84:

LABEL_85:
        goto LABEL_86;
      }
    }

    v31 = [MEMORY[0x1E695DFB0] null];
    if ([v24 isEqual:v31])
    {
      v32 = 0;
    }

    else
    {
      v32 = [v24 intValue];
    }

    v5->_confidenceScore = v32;
  }

  else
  {

    v5->_confidenceScore = 0;
  }

  v33 = [v4 objectForKey:@"startTime"];
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = v33;
  v37 = v35;
  v38 = v37;
  v108 = v36;
  if (v36)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
    v40 = [v36 isEqual:v39];

    if (v40)
    {

      v21 = 0x1E696A000;
    }

    else
    {
      NSClassFromString(v38);
      v41 = objc_opt_isKindOfClass();

      v21 = 0x1E696A000uLL;
      if ((v41 & 1) == 0)
      {
LABEL_83:

        goto LABEL_84;
      }
    }

    v42 = [MEMORY[0x1E695DFB0] null];
    v43 = [v36 isEqual:v42];
    v44 = 0.0;
    if ((v43 & 1) == 0)
    {
      [v36 doubleValue];
    }

    v5->_startTime = v44;

    if (v5->_startTime < 0.0)
    {
      goto LABEL_83;
    }
  }

  else
  {

    v5->_startTime = 0.0;
  }

  v45 = [v4 objectForKey:@"silenceStartTime"];
  v46 = *(v21 + 3480);
  v47 = objc_opt_class();
  v48 = NSStringFromClass(v47);
  v49 = v45;
  v50 = v48;
  v51 = v50;
  if (v49)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
    v53 = [v49 isEqual:v52];

    if (v53)
    {

      v15 = 0x1E695D000;
    }

    else
    {
      NSClassFromString(v51);
      v54 = objc_opt_isKindOfClass();

      v15 = 0x1E695D000uLL;
      if ((v54 & 1) == 0)
      {
LABEL_38:

        goto LABEL_83;
      }
    }

    v55 = [*(v15 + 4016) null];
    v56 = [v49 isEqual:v55];
    v57 = 0.0;
    if ((v56 & 1) == 0)
    {
      [v49 doubleValue];
    }

    v5->_silenceStartTime = v57;

    if (v5->_silenceStartTime < 0.0)
    {
      goto LABEL_38;
    }
  }

  else
  {

    v5->_silenceStartTime = 0.0;
  }

  v107 = v49;
  v58 = [v4 objectForKey:@"endTime"];
  v59 = objc_opt_class();
  v60 = NSStringFromClass(v59);
  v61 = v58;
  v62 = v60;
  v63 = v62;
  if (v61)
  {
    v64 = v15;
    v65 = [*(v15 + 4016) null];
    v66 = [v61 isEqual:v65];

    if (v66)
    {
    }

    else
    {
      NSClassFromString(v63);
      v67 = objc_opt_isKindOfClass();

      if ((v67 & 1) == 0)
      {
LABEL_47:

LABEL_82:
        goto LABEL_83;
      }
    }

    v68 = [*(v64 + 4016) null];
    v69 = [v61 isEqual:v68];
    v70 = 0.0;
    if ((v69 & 1) == 0)
    {
      [v61 doubleValue];
    }

    v5->_endTime = v70;

    if (v5->_endTime < 0.0)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v5->_endTime = 0.0;
  }

  v106 = v61;
  v71 = [v4 objectForKey:@"removeSpaceBefore"];
  v72 = objc_opt_class();
  v73 = NSStringFromClass(v72);
  v74 = validationOfObjectWithClassType(v71, v73);

  if (!v74)
  {
LABEL_81:

    goto LABEL_82;
  }

  if (v71)
  {
    v75 = [MEMORY[0x1E695DFB0] null];
    if ([v71 isEqual:v75])
    {
      v76 = 0;
    }

    else
    {
      v76 = [v71 BOOLValue];
    }

    v5->_removeSpaceBefore = v76;
  }

  else
  {
    v5->_removeSpaceBefore = 0;
  }

  v77 = [v4 objectForKey:@"removeSpaceAfter"];
  v78 = objc_opt_class();
  v79 = NSStringFromClass(v78);
  v80 = validationOfObjectWithClassType(v77, v79);

  if (!v80)
  {

    goto LABEL_81;
  }

  v105 = v77;
  if (v77)
  {
    v81 = [MEMORY[0x1E695DFB0] null];
    if ([v77 isEqual:v81])
    {
      v82 = 0;
    }

    else
    {
      v82 = [v77 BOOLValue];
    }

    v5->_removeSpaceAfter = v82;
  }

  else
  {
    v5->_removeSpaceAfter = 0;
  }

  v83 = [v4 objectForKey:@"ipaPhoneSequence"];
  v84 = objc_opt_class();
  v85 = NSStringFromClass(v84);
  v86 = validationOfObjectWithClassType(v83, v85);

  if (!v86)
  {

LABEL_80:
    goto LABEL_81;
  }

  v87 = [MEMORY[0x1E695DFB0] null];
  if ([v83 isEqual:v87])
  {
    v88 = 0;
  }

  else
  {
    v88 = v83;
  }

  objc_storeStrong(&v5->_ipaPhoneSequence, v88);

  v89 = [v4 objectForKey:@"graphCost"];
  v104 = v83;
  v90 = objc_opt_class();
  v91 = NSStringFromClass(v90);
  v92 = validationOfObjectWithClassType(v89, v91);

  if (!v92)
  {

    goto LABEL_80;
  }

  v93 = [MEMORY[0x1E695DFB0] null];
  v94 = v89;
  if ([v89 isEqual:v93])
  {
    v95 = 0;
  }

  else
  {
    v95 = v89;
  }

  objc_storeStrong(&v5->_graphCost, v95);

  v96 = [v4 objectForKey:@"acousticCost"];
  v97 = objc_opt_class();
  v98 = NSStringFromClass(v97);
  v99 = validationOfObjectWithClassType(v96, v98);

  if (v99)
  {
    v100 = [MEMORY[0x1E695DFB0] null];
    if ([v96 isEqual:v100])
    {
      v101 = 0;
    }

    else
    {
      v101 = v96;
    }

    objc_storeStrong(&v5->_acousticCost, v101);
  }

  if (!v99)
  {
    goto LABEL_87;
  }

LABEL_77:
  v102 = v5;
LABEL_88:

  return v102;
}

- (id)aceToken
{
  v3 = objc_alloc_init(MEMORY[0x1E69C7A28]);
  v4 = [(AFSpeechToken *)self text];
  [v3 setText:v4];

  v5 = [(AFSpeechToken *)self phoneSequence];
  [v3 setPhoneSequence:v5];

  v6 = MEMORY[0x1E696AD98];
  [(AFSpeechToken *)self startTime];
  v8 = [v6 numberWithDouble:v7 * 1000.0];
  [v3 setStartTime:v8];

  v9 = MEMORY[0x1E696AD98];
  [(AFSpeechToken *)self silenceStartTime];
  v11 = [v9 numberWithDouble:v10 * 1000.0];
  [v3 setSilenceStartTime:v11];

  v12 = MEMORY[0x1E696AD98];
  [(AFSpeechToken *)self endTime];
  v14 = [v12 numberWithDouble:v13 * 1000.0];
  [v3 setEndTime:v14];

  [v3 setAddSpaceAfter:{-[AFSpeechToken removeSpaceAfter](self, "removeSpaceAfter") ^ 1}];
  [v3 setRemoveSpaceAfter:{-[AFSpeechToken removeSpaceAfter](self, "removeSpaceAfter")}];
  [v3 setRemoveSpaceBefore:{-[AFSpeechToken removeSpaceBefore](self, "removeSpaceBefore")}];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AFSpeechToken confidenceScore](self, "confidenceScore")}];
  [v3 setConfidenceScore:v15];

  return v3;
}

- (AFSpeechToken)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AFSpeechToken;
  v5 = [(AFSpeechToken *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v8;

    v5->_confidenceScore = [v4 decodeIntegerForKey:@"confidence"];
    [v4 decodeDoubleForKey:@"startTime"];
    v5->_startTime = v10;
    [v4 decodeDoubleForKey:@"silenceStartTime"];
    v5->_silenceStartTime = v11;
    [v4 decodeDoubleForKey:@"endTime"];
    v5->_endTime = v12;
    v5->_removeSpaceBefore = [v4 decodeBoolForKey:@"removeSpaceBefore"];
    v5->_removeSpaceAfter = [v4 decodeBoolForKey:@"removeSpaceAfter"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"graphCost"];
    graphCost = v5->_graphCost;
    v5->_graphCost = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acousticCost"];
    acousticCost = v5->_acousticCost;
    v5->_acousticCost = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeObject:self->_phoneSequence forKey:@"phoneSequence"];
  [v5 encodeInteger:self->_confidenceScore forKey:@"confidence"];
  [v5 encodeDouble:@"startTime" forKey:self->_startTime];
  [v5 encodeDouble:@"silenceStartTime" forKey:self->_silenceStartTime];
  [v5 encodeDouble:@"endTime" forKey:self->_endTime];
  [v5 encodeBool:self->_removeSpaceBefore forKey:@"removeSpaceBefore"];
  [v5 encodeBool:self->_removeSpaceAfter forKey:@"removeSpaceAfter"];
  [v5 encodeObject:self->_ipaPhoneSequence forKey:@"ipaPhoneSequence"];
  [v5 encodeObject:self->_graphCost forKey:@"graphCost"];
  [v5 encodeObject:self->_acousticCost forKey:@"acousticCost"];
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = AFSpeechToken;
  v3 = [(AFSpeechToken *)&v16 description];
  v4 = *&self->_startTime;
  v14 = v4;
  v15 = *&self->_text;
  endTime = self->_endTime;
  if (self->_removeSpaceBefore)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_removeSpaceAfter)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  ipaPhoneSequence = self->_ipaPhoneSequence;
  confidenceScore = self->_confidenceScore;
  v10 = [(NSNumber *)self->_graphCost stringValue];
  v11 = [(NSNumber *)self->_acousticCost stringValue];
  v12 = [v3 stringByAppendingFormat:@"text: %@, phoneSequence: %@, score: %ld, start: %lf, silenceStart: %lf, end: %lf, remove space before: %@ after: %@, ipaPhoneSequence: %@, graphCost: %@, acousticCost: %@", v15, confidenceScore, v14, *&endTime, v6, v7, ipaPhoneSequence, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(v4 + 2), v5 == self->_text) || -[NSString isEqualToString:](v5, "isEqualToString:")) && (([*(v4 + 3) isEqualToString:self->_phoneSequence] & 1) != 0 || *(v4 + 3) == self->_phoneSequence) && *(v4 + 5) == self->_confidenceScore && *(v4 + 6) == self->_startTime && *(v4 + 7) == self->_silenceStartTime && *(v4 + 8) == self->_endTime && v4[8] == self->_removeSpaceBefore && v4[9] == self->_removeSpaceAfter && ((objc_msgSend(*(v4 + 4), "isEqualToString:", self->_ipaPhoneSequence) & 1) != 0 || *(v4 + 3) == self->_phoneSequence) && ((objc_msgSend(*(v4 + 9), "isEqual:", self->_graphCost) & 1) != 0 || *(v4 + 9) == self->_graphCost) && ((objc_msgSend(*(v4 + 10), "isEqual:", self->_acousticCost) & 1) != 0 || *(v4 + 10) == self->_acousticCost);

  return v6;
}

@end