@interface LSDisplayHumanReadableData
@end

@implementation LSDisplayHumanReadableData

void ___LSDisplayHumanReadableData_block_invoke(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) descriptionOfUnit:a2 inTable:*(a1 + 72)];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 72);
    v9 = *(a1 + 76);
    __stream = *(a1 + 64);
    v11 = *(*(a1 + 56) + 8);
    v45 = v5;
    v49 = v5;
    v47 = v7;
    v12 = v8;
    v46 = objc_autoreleasePoolPush();
    v48 = v12;
    if (!v12 || (v51 = v49, [v12 evaluateWithObject:?]))
    {
      if ((v9 & 0x10) != 0)
      {
        v51 = v49;
        v33 = v47;
        v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (v33)
        {
          v35 = [v33 count];
        }

        else
        {
          v35 = -1;
        }

        v36 = MEMORY[0x1E69991A0];
        v56 = MEMORY[0x1E69E9820];
        v57 = 3221225472;
        v58 = ___ZN14LaunchServices21DatabaseVisualizationL34getPropertyListFromUnitDescriptionEjjP18NSAttributedStringP5NSSetIP8NSStringE_block_invoke;
        v59 = &unk_1E6A1BBB8;
        v37 = v33;
        v60 = v37;
        v38 = v34;
        v61 = v38;
        __p = v35;
        [v36 enumerateValuesForTitlesInDescription:v51 block:&v56];
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
        [v38 setObject:v39 forKeyedSubscript:@"tableID"];

        v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
        [v38 setObject:v40 forKeyedSubscript:@"unitID"];

        v41 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v38 options:0 error:0];
        if (v41)
        {
          if ((*(v11 + 24) & 1) == 0)
          {
            fputc(44, __stream);
          }

          *(v11 + 24) = 0;
          v42 = v41;
          fwrite([v41 bytes], 1uLL, objc_msgSend(v41, "length"), __stream);
        }
      }

      else
      {
        v13 = [MEMORY[0x1E6999190] separatorForTitle:0 separator:45];
        [v13 cs_writeToFileHandle:__stream];

        fputc(10, __stream);
        v51 = v49;
        if (v48)
        {
          v14 = [v49 mutableCopy];
          v15 = objc_autoreleasePoolPush();
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v51 = v14;
          v16 = [v14 cs_rangesMatchingPredicate:v48];
          v44 = v4;
          v17 = [v16 countByEnumeratingWithState:&v52 objects:&v56 count:16];
          if (v17)
          {
            v18 = *v53;
            v19 = *MEMORY[0x1E69991C0];
            v20 = *MEMORY[0x1E69991B0];
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v53 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = [*(*(&v52 + 1) + 8 * i) rangeValue];
                v24 = v23;
                [v51 addAttribute:v19 value:&unk_1EEF8EF30 range:{v22, v23}];
                [v51 addAttribute:v20 value:&unk_1EEF8EF48 range:{v22, v24}];
              }

              v17 = [v16 countByEnumeratingWithState:&v52 objects:&v56 count:16];
            }

            while (v17);
          }

          v4 = v44;
          objc_autoreleasePoolPop(v15);
        }

        if (v47)
        {
          v25 = [v47 count];
          v56 = 0;
          v57 = &v56;
          v58 = 0x4812000000;
          v59 = __Block_byref_object_copy__71;
          v60 = __Block_byref_object_dispose__72;
          v61 = &unk_1818533FF;
          v63 = 0;
          v64 = 0;
          __p = 0;
          v26 = MEMORY[0x1E69991A0];
          *&v52 = MEMORY[0x1E69E9820];
          *(&v52 + 1) = 3221225472;
          *&v53 = ___ZN14LaunchServices21DatabaseVisualizationL20writeUnitDescriptionEP7__sFILEjjP18NSAttributedStringP5NSSetIP8NSStringEP11NSPredicatejPb_block_invoke;
          *(&v53 + 1) = &unk_1E6A1BB90;
          *&v54 = v47;
          *(&v54 + 1) = &v56;
          *&v55 = v25;
          [v26 enumerateValuesForTitlesInDescription:v51 block:&v52];
          v27 = *(v57 + 48);
          v28 = *(v57 + 56);
          while (v27 != v28)
          {
            v29 = *v27;
            v30 = v27[1];
            v31 = objc_autoreleasePoolPush();
            v32 = [v51 attributedSubstringFromRange:{v29, v30}];
            [v32 cs_writeToFileHandle:__stream];
            fputc(10, __stream);

            objc_autoreleasePoolPop(v31);
            v27 += 2;
          }

          _Block_object_dispose(&v56, 8);
          if (__p)
          {
            v63 = __p;
            operator delete(__p);
          }
        }

        else
        {
          [v51 cs_writeToFileHandle:__stream];
          fputc(10, __stream);
        }
      }
    }

    objc_autoreleasePoolPop(v46);

    v6 = v45;
  }

  objc_autoreleasePoolPop(v4);
  v43 = *MEMORY[0x1E69E9840];
}

@end