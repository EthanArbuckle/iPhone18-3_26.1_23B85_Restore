@interface PKHandwritingSynthesisGenerationLogEntry
- (PKHandwritingSynthesisGenerationLogEntry)initWithSynthesizedStrokeGroups:(id)a3 debugInfo:(id)a4;
- (id)synthesizedStrokes;
@end

@implementation PKHandwritingSynthesisGenerationLogEntry

- (PKHandwritingSynthesisGenerationLogEntry)initWithSynthesizedStrokeGroups:(id)a3 debugInfo:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PKHandwritingSynthesisGenerationLogEntry;
  v8 = [(PKHandwritingSynthesisLogEntry *)&v12 initWithDebugInfo:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strokegroups, a3);
  }

  v10 = [(PKHandwritingSynthesisLogEntry *)v9 debugInfo];
  [v10 setObject:@"generation" forKeyedSubscript:@"type"];

  return v9;
}

- (id)synthesizedStrokes
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = self->_strokegroups;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v59;
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = 0.0;
    v44 = *(MEMORY[0x1E695EFD0] + 16);
    v45 = *MEMORY[0x1E695EFD0];
    v43 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        v47 = v11;
        if (*v59 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
        v16 = v7;
        v17 = v8;
        v18 = v9;
        v19 = v10;
        if (v15)
        {
          v20 = v15;
          v21 = *v55;
          v19 = v10;
          v18 = v9;
          v17 = v8;
          v16 = v7;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v55 != v21)
              {
                objc_enumerationMutation(v14);
              }

              v23 = *(*(&v54 + 1) + 8 * j);
              v67.origin.x = v16;
              v67.origin.y = v17;
              v67.size.width = v18;
              v67.size.height = v19;
              v72.origin.x = v7;
              v72.origin.y = v8;
              v72.size.width = v9;
              v72.size.height = v10;
              v24 = CGRectEqualToRect(v67, v72);
              [v23 _bounds];
              v29 = v25;
              v30 = v26;
              v31 = v27;
              v32 = v28;
              if (!v24)
              {
                v68.origin.x = v16;
                v68.origin.y = v17;
                v68.size.width = v18;
                v68.size.height = v19;
                *&v25 = CGRectUnion(v68, *&v29);
              }

              v16 = v25;
              v17 = v26;
              v18 = v27;
              v19 = v28;
            }

            v20 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
          }

          while (v20);
        }

        memset(&v53, 0, sizeof(v53));
        v69.origin.x = v16;
        v69.origin.y = v17;
        v69.size.width = v18;
        v69.size.height = v19;
        tx = -CGRectGetMinX(v69);
        v70.origin.x = v16;
        v70.origin.y = v17;
        v70.size.width = v18;
        v70.size.height = v19;
        MinY = CGRectGetMinY(v70);
        *&v52.a = v45;
        *&v52.c = v44;
        *&v52.tx = v43;
        CGAffineTransformTranslate(&v53, &v52, tx, v47 - MinY);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v34 = v14;
        v35 = [v34 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v49;
          v38 = 0.0;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v49 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v40 = [*(*(&v48 + 1) + 8 * k) copy];
              v52 = v53;
              [v40 _applyTransform:&v52];
              [v3 addObject:v40];
              [v40 _bounds];
              v38 = fmax(v38, CGRectGetMaxY(v71));
            }

            v36 = [v34 countByEnumeratingWithState:&v48 objects:v62 count:16];
          }

          while (v36);
          v11 = v38 + 5.0;
        }

        else
        {
          v11 = 5.0;
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v5);
  }

  return v3;
}

@end