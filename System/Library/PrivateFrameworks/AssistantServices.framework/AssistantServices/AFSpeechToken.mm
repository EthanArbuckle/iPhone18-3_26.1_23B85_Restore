@interface AFSpeechToken
- (AFSpeechToken)initWithCoder:(id)coder;
- (AFSpeechToken)initWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)aceToken;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
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
  null = ipaPhoneSequence;
  if (!ipaPhoneSequence)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v26[2] = null;
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
  null2 = graphCost;
  if (!graphCost)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[9] = null2;
  v25[10] = @"acousticCost";
  acousticCost = self->_acousticCost;
  null3 = acousticCost;
  if (!acousticCost)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[10] = null3;
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

- (AFSpeechToken)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v109.receiver = self;
  v109.super_class = AFSpeechToken;
  v5 = [(AFSpeechToken *)&v109 init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [dictionaryCopy objectForKey:@"text"];
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
  v10 = [dictionaryCopy objectForKey:@"phoneSequence"];
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

  null = [MEMORY[0x1E695DFB0] null];
  if ([v13 isEqual:null])
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  objc_storeStrong(&v5->_phoneSequence, v19);

  v20 = [dictionaryCopy objectForKey:@"confidence"];
  v21 = 0x1E696A000uLL;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = v20;
  v25 = v23;
  v26 = v25;
  if (v24)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    v28 = [v24 isEqual:null2];

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

    null3 = [MEMORY[0x1E695DFB0] null];
    if ([v24 isEqual:null3])
    {
      intValue = 0;
    }

    else
    {
      intValue = [v24 intValue];
    }

    v5->_confidenceScore = intValue;
  }

  else
  {

    v5->_confidenceScore = 0;
  }

  v33 = [dictionaryCopy objectForKey:@"startTime"];
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = v33;
  v37 = v35;
  v38 = v37;
  v108 = v36;
  if (v36)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
    v40 = [v36 isEqual:null4];

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

    null5 = [MEMORY[0x1E695DFB0] null];
    v43 = [v36 isEqual:null5];
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

  v45 = [dictionaryCopy objectForKey:@"silenceStartTime"];
  v46 = *(v21 + 3480);
  v47 = objc_opt_class();
  v48 = NSStringFromClass(v47);
  v49 = v45;
  v50 = v48;
  v51 = v50;
  if (v49)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
    v53 = [v49 isEqual:null6];

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

    null7 = [*(v15 + 4016) null];
    v56 = [v49 isEqual:null7];
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
  v58 = [dictionaryCopy objectForKey:@"endTime"];
  v59 = objc_opt_class();
  v60 = NSStringFromClass(v59);
  v61 = v58;
  v62 = v60;
  v63 = v62;
  if (v61)
  {
    v64 = v15;
    null8 = [*(v15 + 4016) null];
    v66 = [v61 isEqual:null8];

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

    null9 = [*(v64 + 4016) null];
    v69 = [v61 isEqual:null9];
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
  v71 = [dictionaryCopy objectForKey:@"removeSpaceBefore"];
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
    null10 = [MEMORY[0x1E695DFB0] null];
    if ([v71 isEqual:null10])
    {
      bOOLValue = 0;
    }

    else
    {
      bOOLValue = [v71 BOOLValue];
    }

    v5->_removeSpaceBefore = bOOLValue;
  }

  else
  {
    v5->_removeSpaceBefore = 0;
  }

  v77 = [dictionaryCopy objectForKey:@"removeSpaceAfter"];
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
    null11 = [MEMORY[0x1E695DFB0] null];
    if ([v77 isEqual:null11])
    {
      bOOLValue2 = 0;
    }

    else
    {
      bOOLValue2 = [v77 BOOLValue];
    }

    v5->_removeSpaceAfter = bOOLValue2;
  }

  else
  {
    v5->_removeSpaceAfter = 0;
  }

  v83 = [dictionaryCopy objectForKey:@"ipaPhoneSequence"];
  v84 = objc_opt_class();
  v85 = NSStringFromClass(v84);
  v86 = validationOfObjectWithClassType(v83, v85);

  if (!v86)
  {

LABEL_80:
    goto LABEL_81;
  }

  null12 = [MEMORY[0x1E695DFB0] null];
  if ([v83 isEqual:null12])
  {
    v88 = 0;
  }

  else
  {
    v88 = v83;
  }

  objc_storeStrong(&v5->_ipaPhoneSequence, v88);

  v89 = [dictionaryCopy objectForKey:@"graphCost"];
  v104 = v83;
  v90 = objc_opt_class();
  v91 = NSStringFromClass(v90);
  v92 = validationOfObjectWithClassType(v89, v91);

  if (!v92)
  {

    goto LABEL_80;
  }

  null13 = [MEMORY[0x1E695DFB0] null];
  v94 = v89;
  if ([v89 isEqual:null13])
  {
    v95 = 0;
  }

  else
  {
    v95 = v89;
  }

  objc_storeStrong(&v5->_graphCost, v95);

  v96 = [dictionaryCopy objectForKey:@"acousticCost"];
  v97 = objc_opt_class();
  v98 = NSStringFromClass(v97);
  v99 = validationOfObjectWithClassType(v96, v98);

  if (v99)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
    if ([v96 isEqual:null14])
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
  text = [(AFSpeechToken *)self text];
  [v3 setText:text];

  phoneSequence = [(AFSpeechToken *)self phoneSequence];
  [v3 setPhoneSequence:phoneSequence];

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

- (AFSpeechToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = AFSpeechToken;
  v5 = [(AFSpeechToken *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v8;

    v5->_confidenceScore = [coderCopy decodeIntegerForKey:@"confidence"];
    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v10;
    [coderCopy decodeDoubleForKey:@"silenceStartTime"];
    v5->_silenceStartTime = v11;
    [coderCopy decodeDoubleForKey:@"endTime"];
    v5->_endTime = v12;
    v5->_removeSpaceBefore = [coderCopy decodeBoolForKey:@"removeSpaceBefore"];
    v5->_removeSpaceAfter = [coderCopy decodeBoolForKey:@"removeSpaceAfter"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"graphCost"];
    graphCost = v5->_graphCost;
    v5->_graphCost = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acousticCost"];
    acousticCost = v5->_acousticCost;
    v5->_acousticCost = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_phoneSequence forKey:@"phoneSequence"];
  [coderCopy encodeInteger:self->_confidenceScore forKey:@"confidence"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"silenceStartTime" forKey:self->_silenceStartTime];
  [coderCopy encodeDouble:@"endTime" forKey:self->_endTime];
  [coderCopy encodeBool:self->_removeSpaceBefore forKey:@"removeSpaceBefore"];
  [coderCopy encodeBool:self->_removeSpaceAfter forKey:@"removeSpaceAfter"];
  [coderCopy encodeObject:self->_ipaPhoneSequence forKey:@"ipaPhoneSequence"];
  [coderCopy encodeObject:self->_graphCost forKey:@"graphCost"];
  [coderCopy encodeObject:self->_acousticCost forKey:@"acousticCost"];
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
  stringValue = [(NSNumber *)self->_graphCost stringValue];
  stringValue2 = [(NSNumber *)self->_acousticCost stringValue];
  v12 = [v3 stringByAppendingFormat:@"text: %@, phoneSequence: %@, score: %ld, start: %lf, silenceStart: %lf, end: %lf, remove space before: %@ after: %@, ipaPhoneSequence: %@, graphCost: %@, acousticCost: %@", v15, confidenceScore, v14, *&endTime, v6, v7, ipaPhoneSequence, stringValue, stringValue2];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(equalCopy + 2), v5 == self->_text) || -[NSString isEqualToString:](v5, "isEqualToString:")) && (([*(equalCopy + 3) isEqualToString:self->_phoneSequence] & 1) != 0 || *(equalCopy + 3) == self->_phoneSequence) && *(equalCopy + 5) == self->_confidenceScore && *(equalCopy + 6) == self->_startTime && *(equalCopy + 7) == self->_silenceStartTime && *(equalCopy + 8) == self->_endTime && equalCopy[8] == self->_removeSpaceBefore && equalCopy[9] == self->_removeSpaceAfter && ((objc_msgSend(*(equalCopy + 4), "isEqualToString:", self->_ipaPhoneSequence) & 1) != 0 || *(equalCopy + 3) == self->_phoneSequence) && ((objc_msgSend(*(equalCopy + 9), "isEqual:", self->_graphCost) & 1) != 0 || *(equalCopy + 9) == self->_graphCost) && ((objc_msgSend(*(equalCopy + 10), "isEqual:", self->_acousticCost) & 1) != 0 || *(equalCopy + 10) == self->_acousticCost);

  return v6;
}

@end