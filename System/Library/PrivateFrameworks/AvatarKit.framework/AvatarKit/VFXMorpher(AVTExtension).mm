@interface VFXMorpher(AVTExtension)
- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension;
@end

@implementation VFXMorpher(AVTExtension)

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension
{
  v173 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 correctiveDriverCounts];

  if (!v5)
  {
    v6 = [a1 targets];
    v7 = [a1 targetsAndInBetween];
    v8 = [a1 inBetweenCounts];
    v157 = a1;
    v9 = [a1 inBetweenWeights];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v142 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v147 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [v6 count];
    v144 = v6;
    v136 = v9;
    v137 = v7;
    v146 = v8;
    v155 = v10;
    if (v11)
    {
      v12 = v11;
      v148 = 0;
      v149 = 0;
      v139 = 0;
      v140 = 0;
      v153 = 0;
      v138 = 0;
      v143 = 0;
      v13 = 0;
      v135 = 0;
      v14 = 0;
      v15 = 0;
      v145 = v11;
      while (1)
      {
        v152 = v14;
        v16 = [v6 objectAtIndexedSubscript:v15];
        v17 = [v16 name];
        v18 = [v17 containsString:@"__"];

        if (!v18)
        {
          v150 = v15;
          v23 = [v8 objectAtIndexedSubscript:v15];
          v24 = [v23 unsignedIntegerValue];

          if (v24 < 2)
          {
            v14 = v152;
            v35 = v155;
            if (v148)
            {
              [v148 addObject:&unk_1F39D9590];
            }

            else
            {
              v148 = 0;
            }

            v34 = v150;
          }

          else
          {
            v14 = v152;
            if (!v148)
            {
              v148 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);

              if ([v155 count])
              {
                v26 = 0;
                do
                {
                  [v148 addObject:&unk_1F39D9590];
                  ++v26;
                }

                while (v26 < [v155 count]);
              }

              v140 = v25;
              v14 = v152;
            }

            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
            [v148 addObject:v27];

            v28 = v24 - 1;
            v29 = v149;
            do
            {
              v30 = v14;
              v31 = v29++;
              v32 = [v137 objectAtIndexedSubscript:v31];
              [v147 addObject:v32];

              v14 = v30 + 1;
              v33 = [v136 objectAtIndexedSubscript:v30];
              [v140 addObject:v33];

              --v28;
            }

            while (v28);
            v149 = v29;
            v6 = v144;
            v12 = v145;
            v34 = v150;
            v8 = v146;
            v35 = v155;
          }

          [v147 addObject:v16];
          ++v149;
          [v157 weightForTargetAtIndex:v34];
          v64 = [MEMORY[0x1E696AD98] numberWithFloat:?];
          [v142 addObject:v64];

          v15 = v150;
          [v35 addObject:v16];
          goto LABEL_61;
        }

        v19 = [v16 name];
        v20 = [v19 componentsSeparatedByString:@"__"];

        v21 = [v20 count];
        if (v21 == 1)
        {
          v22 = avt_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v169 = v20;
            _os_log_error_impl(&dword_1BB472000, v22, OS_LOG_TYPE_ERROR, "Error: Failed to create corrective with only one target: %@", buf, 0xCu);
          }
        }

        else
        {
          v36 = v21;
          v151 = v15;
          v154 = v13;
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v37 = v20;
          v38 = [v37 countByEnumeratingWithState:&v163 objects:v172 count:16];
          v141 = v20;
          if (!v38)
          {

LABEL_37:
            v50 = v139;
            if (!v153)
            {
              v153 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v51 = [v146 objectAtIndexedSubscript:v151];
            v52 = [v51 unsignedIntegerValue];

            v53 = v152;
            if (v52 < 2)
            {
              if (v143)
              {
                [v143 addObject:&unk_1F39D9590];
              }

              else
              {
                v143 = 0;
              }

              v63 = v146;
              v58 = v149;
            }

            else
            {
              if (!v143)
              {
                v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v54 = objc_alloc_init(MEMORY[0x1E695DF70]);

                if ([v138 count])
                {
                  v55 = 0;
                  do
                  {
                    [v143 addObject:&unk_1F39D9590];
                    ++v55;
                  }

                  while (v55 < [v138 count]);
                }

                v154 = v54;
                v53 = v152;
              }

              v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v52];
              [v143 addObject:v56];

              v57 = v52 - 1;
              v58 = v149;
              do
              {
                v59 = v53;
                v60 = v58++;
                v61 = [v137 objectAtIndexedSubscript:v60];
                [v153 addObject:v61];

                v53 = v59 + 1;
                v62 = [v136 objectAtIndexedSubscript:v59];
                [v154 addObject:v62];

                --v57;
              }

              while (v57);
              v152 = v53;
              v63 = v146;
              v50 = v139;
            }

            [v153 addObject:v16];
            v65 = v138;
            if (!v138)
            {
              v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v66 = objc_alloc_init(MEMORY[0x1E695DF70]);

              v50 = v66;
            }

            v149 = v58 + 1;
            v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
            v138 = v65;
            [v65 addObject:v67];

            v139 = v50;
            [v50 addObjectsFromArray:v37];
            v13 = v154;
            v15 = v151;
            v6 = v144;
            v8 = v63;
            v20 = v141;
            goto LABEL_60;
          }

          v39 = v38;
          v40 = *v164;
          v41 = 1;
          v42 = v157;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v164 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v44 = *(*(&v163 + 1) + 8 * i);
              if ([v42 _weightIndexForTargetNamed:v44] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v45 = avt_default_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  v47 = [v16 name];
                  *buf = 138412546;
                  v169 = v44;
                  v170 = 2112;
                  v171 = v47;
                  _os_log_error_impl(&dword_1BB472000, v45, OS_LOG_TYPE_ERROR, "Error: Failed to find index of driving target %@ for corrective %@", buf, 0x16u);
                }

                if (v4)
                {
                  v46 = [v16 name];
                  (v4)[2](v4, v46, v44, v36);
                }

                v41 = 0;
                v42 = v157;
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v163 objects:v172 count:16];
          }

          while (v39);

          v6 = v144;
          v20 = v141;
          if (v41)
          {
            goto LABEL_37;
          }

          v8 = v146;
          if (v146)
          {
            v48 = [v146 objectAtIndexedSubscript:v151];
            v49 = [v48 unsignedIntegerValue];
          }

          else
          {
            v49 = 1;
          }

          v15 = v151;
          v135 += v49;
          v13 = v154;
        }

LABEL_60:

        v14 = v152;
        v12 = v145;
LABEL_61:

        if (++v15 == v12)
        {
          goto LABEL_64;
        }
      }
    }

    v135 = 0;
    v13 = 0;
    v143 = 0;
    v138 = 0;
    v139 = 0;
    v153 = 0;
    v140 = 0;
    v148 = 0;
LABEL_64:
    v68 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v139, "count")}];
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    obj = v139;
    v69 = [obj countByEnumeratingWithState:&v159 objects:v167 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v160;
      do
      {
        for (j = 0; j != v70; ++j)
        {
          v73 = v68;
          if (*v160 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v74 = *(*(&v159 + 1) + 8 * j);
          v158[0] = MEMORY[0x1E69E9820];
          v158[1] = 3221225472;
          v158[2] = __76__VFXMorpher_AVTExtension__avt_buildInternalSupportForCorrectivesWithBlock___block_invoke;
          v158[3] = &unk_1E7F47B88;
          v158[4] = v74;
          v75 = [v155 indexOfObjectPassingTest:v158];
          if (v75 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v76 = avt_default_log();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v169 = v74;
              _os_log_error_impl(&dword_1BB472000, v76, OS_LOG_TYPE_ERROR, "Error: Failed to find index for driving target %@", buf, 0xCu);
            }

            v68 = v73;
          }

          else
          {
            v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v75];
            v68 = v73;
            [v73 addObject:v76];
          }
        }

        v70 = [obj countByEnumeratingWithState:&v159 objects:v167 count:16];
      }

      while (v70);
    }

    v77 = [v147 count];
    if (v77 < [v148 count])
    {
      v78 = avt_default_log();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [(VFXMorpher(AVTExtension) *)v78 avt_buildInternalSupportForCorrectivesWithBlock:v79, v80, v81, v82, v83, v84, v85];
      }
    }

    v86 = [v153 count];
    if (v86 < [v143 count])
    {
      v87 = avt_default_log();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        [(VFXMorpher(AVTExtension) *)v87 avt_buildInternalSupportForCorrectivesWithBlock:v88, v89, v90, v91, v92, v93, v94];
      }
    }

    v95 = [v147 count];
    v96 = [v153 count] + v95;
    if (v96 != [v137 count] - v135)
    {
      v97 = avt_default_log();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        [(SCNMorpher(AVTExtension) *)v97 avt_buildInternalSupportForCorrectivesWithBlock:v98, v99, v100, v101, v102, v103, v104];
      }
    }

    if ([v143 count])
    {
      v105 = [v148 count];
      v106 = [v143 count] + v105;
      if (v106 != [v146 count])
      {
        v107 = avt_default_log();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v107 avt_buildInternalSupportForCorrectivesWithBlock:v108, v109, v110, v111, v112, v113, v114];
        }
      }

      v115 = [v140 count];
      v116 = [v13 count] + v115;
      if (v116 != [v136 count])
      {
        v117 = avt_default_log();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v117 avt_buildInternalSupportForCorrectivesWithBlock:v118, v119, v120, v121, v122, v123, v124];
        }
      }

      v125 = [v143 count];
      if (v125 != [v138 count])
      {
        v126 = avt_default_log();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v126 avt_buildInternalSupportForCorrectivesWithBlock:v127, v128, v129, v130, v131, v132, v133];
        }
      }
    }

    if (v138)
    {
      [v157 setTargetsAndInBetweens:v147 inBetweenCounts:v148 inBetweenWeights:v140 correctives:v153 driverCounts:v138 driverIndices:v68 inBetweenCounts:v143 inBetweenWeights:v13];
    }
  }

  v134 = *MEMORY[0x1E69E9840];
}

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end