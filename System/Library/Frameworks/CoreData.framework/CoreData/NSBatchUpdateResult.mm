@interface NSBatchUpdateResult
- (NSBatchUpdateResult)initWithResultType:(unint64_t)type andObject:(id)object;
- (NSBatchUpdateResult)initWithSubresults:(id)subresults;
- (void)dealloc;
@end

@implementation NSBatchUpdateResult

- (void)dealloc
{
  self->_aggregatedResult = 0;
  v3.receiver = self;
  v3.super_class = NSBatchUpdateResult;
  [(NSBatchUpdateResult *)&v3 dealloc];
}

- (NSBatchUpdateResult)initWithResultType:(unint64_t)type andObject:(id)object
{
  v9.receiver = self;
  v9.super_class = NSBatchUpdateResult;
  v6 = [(NSBatchUpdateResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_resultType = type;
    v6->_aggregatedResult = [object copy];
  }

  return v7;
}

- (NSBatchUpdateResult)initWithSubresults:(id)subresults
{
  v60 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = NSBatchUpdateResult;
  v4 = [(NSBatchUpdateResult *)&v50 init];
  if (!v4)
  {
    goto LABEL_45;
  }

  if ([subresults count])
  {
    resultType = [objc_msgSend(subresults "lastObject")];
    v4->_resultType = resultType;
  }

  else
  {
    resultType = v4->_resultType;
  }

  if (resultType == 2)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = [subresults countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v43;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(subresults);
          }

          v28 = *(*(&v42 + 1) + 8 * i);
          v29 = v4->_resultType;
          if (v29 != [v28 resultType])
          {
            v32 = MEMORY[0x1E695DF30];
            v33 = *MEMORY[0x1E695D930];
            v54 = @"Results";
            subresultsCopy = subresults;
            v34 = MEMORY[0x1E695DF20];
            v35 = &subresultsCopy;
            v36 = &v54;
            goto LABEL_49;
          }

          v25 += [objc_msgSend(v28 "result")];
        }

        v24 = [subresults countByEnumeratingWithState:&v42 objects:v56 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
    goto LABEL_44;
  }

  if (resultType == 1)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = [subresults countByEnumeratingWithState:&v38 objects:v53 count:16];
    if (!v16)
    {
      goto LABEL_44;
    }

    v17 = v16;
    v18 = *v39;
    while (1)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(subresults);
        }

        v20 = *(*(&v38 + 1) + 8 * j);
        v21 = v4->_resultType;
        if (v21 != [v20 resultType])
        {
          v32 = MEMORY[0x1E695DF30];
          v33 = *MEMORY[0x1E695D930];
          v51 = @"Results";
          subresultsCopy2 = subresults;
          v34 = MEMORY[0x1E695DF20];
          v35 = &subresultsCopy2;
          v36 = &v51;
          goto LABEL_49;
        }

        result = [v20 result];
        if ([result count])
        {
          [v7 addObjectsFromArray:result];
        }
      }

      v17 = [subresults countByEnumeratingWithState:&v38 objects:v53 count:16];
      if (!v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (resultType)
  {
    goto LABEL_45;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = [subresults countByEnumeratingWithState:&v46 objects:v59 count:16];
  v7 = MEMORY[0x1E695E110];
  if (!v6)
  {
    goto LABEL_44;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  v11 = *v47;
  do
  {
    v12 = 0;
    v13 = -v10;
    v37 = v10 + v8;
    do
    {
      if (*v47 != v11)
      {
        objc_enumerationMutation(subresults);
      }

      v14 = *(*(&v46 + 1) + 8 * v12);
      v15 = v4->_resultType;
      if (v15 != [v14 resultType])
      {
        v32 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E695D930];
        v57 = @"Results";
        subresultsCopy3 = subresults;
        v34 = MEMORY[0x1E695DF20];
        v35 = &subresultsCopy3;
        v36 = &v57;
LABEL_49:
        objc_exception_throw([v32 exceptionWithName:v33 reason:@"Mismatched result types during aggregation of batch update results" userInfo:{objc_msgSend(v34, "dictionaryWithObjects:forKeys:count:", v35, v36, 1)}]);
      }

      if (((v13 != v12) & ~v9) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = [objc_msgSend(v14 "result")];
      }

      ++v12;
    }

    while (v8 != v12);
    v8 = [subresults countByEnumeratingWithState:&v46 objects:v59 count:16];
    v10 = v37;
  }

  while (v8);
  v7 = MEMORY[0x1E695E110];
  if (v9)
  {
    v7 = MEMORY[0x1E695E118];
  }

LABEL_44:
  v4->_aggregatedResult = v7;
LABEL_45:
  v30 = *MEMORY[0x1E69E9840];
  return v4;
}

@end