@interface NLPModelTrainingDataProvider
- (NLPModelTrainingDataProvider)initWithConfiguration:(id)a3 numberOfInstances:(unint64_t)a4 dataSource:(void *)a5 instanceDataProvider:(id)a6;
- (id)instanceAtIndex:(unint64_t)a3;
@end

@implementation NLPModelTrainingDataProvider

- (NLPModelTrainingDataProvider)initWithConfiguration:(id)a3 numberOfInstances:(unint64_t)a4 dataSource:(void *)a5 instanceDataProvider:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = NLPModelTrainingDataProvider;
  v11 = [(NLDataProvider *)&v16 initWithConfiguration:a3 dataURL:0];
  v12 = v11;
  if (v11)
  {
    v11->_numberOfInstances = a4;
    v11->_dataSource = a5;
    v13 = MEMORY[0x19EAFC6F0](v10);
    instanceDataProvider = v12->_instanceDataProvider;
    v12->_instanceDataProvider = v13;
  }

  return v12;
}

- (id)instanceAtIndex:(unint64_t)a3
{
  v41 = *MEMORY[0x1E69E9840];
  dataSource = self->_dataSource;
  v6 = (*(self->_instanceDataProvider + 2))();
  if (!v6)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v7 = [(NLDataProvider *)self configuration];
  v8 = [v7 type];

  if (v8 != 1)
  {
    if (!v8)
    {
      v9 = [v6 objectForKey:kNLPStringKey];
      v10 = [v6 objectForKey:kNLPLabelKey];
      if (v9)
      {
        objc_opt_class();
        v11 = 0;
        if ((objc_opt_isKindOfClass() & 1) == 0 || !v10)
        {
LABEL_25:

          if (v11)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [[NLClassifierModelDataInstance alloc] initWithString:v9 label:v10 tokenizer:[(NLDataProvider *)self tokenizer]];
          goto LABEL_25;
        }
      }

      v11 = 0;
      goto LABEL_25;
    }

LABEL_26:
    NSLog(&cfstr_SkippingInvali.isa, a3);
    v11 = 0;
    goto LABEL_27;
  }

  v12 = [v6 objectForKey:kNLPTokenArrayKey];
  v13 = [v6 objectForKey:kNLPLabelArrayKey];
  if (!v12)
  {
LABEL_42:
    v11 = 0;
    goto LABEL_43;
  }

  objc_opt_class();
  v11 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v12 count];
      if (v14 == [v13 count])
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v15 = v12;
        v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v35 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v30 = 0;
                goto LABEL_31;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v30 = 1;
LABEL_31:
        v29 = v15;

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v23 = v13;
        v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v32;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v32 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v31 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_42;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        if (v30)
        {
          v11 = [[NLSequenceModelDataInstance alloc] initWithTokens:v29 labels:v23];
          goto LABEL_43;
        }
      }
    }

    goto LABEL_42;
  }

LABEL_43:

  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_27:

  v21 = *MEMORY[0x1E69E9840];

  return v11;
}

@end