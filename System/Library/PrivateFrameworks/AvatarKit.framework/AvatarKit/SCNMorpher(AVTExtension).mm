@interface SCNMorpher(AVTExtension)
- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension;
@end

@implementation SCNMorpher(AVTExtension)

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension
{
  v174 = *MEMORY[0x1E69E9840];
  v4 = a3;
  correctiveDriverCounts = [self correctiveDriverCounts];

  if (!correctiveDriverCounts)
  {
    targets = [self targets];
    targetsAndInBetween = [self targetsAndInBetween];
    inBetweenCounts = [self inBetweenCounts];
    selfCopy = self;
    inBetweenWeights = [self inBetweenWeights];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v148 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [targets count];
    v145 = targets;
    v137 = inBetweenWeights;
    v138 = targetsAndInBetween;
    v147 = inBetweenCounts;
    v156 = v10;
    if (v11)
    {
      v12 = v11;
      v149 = 0;
      v150 = 0;
      v140 = 0;
      v141 = 0;
      v154 = 0;
      v139 = 0;
      v144 = 0;
      v13 = 0;
      v136 = 0;
      v14 = 0;
      v15 = 0;
      v146 = v11;
      while (1)
      {
        v153 = v14;
        v16 = [targets objectAtIndexedSubscript:v15];
        name = [v16 name];
        v18 = [name containsString:@"__"];

        if (!v18)
        {
          v151 = v15;
          v23 = [inBetweenCounts objectAtIndexedSubscript:v15];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          if (unsignedIntegerValue < 2)
          {
            v14 = v153;
            v35 = v156;
            if (v149)
            {
              [v149 addObject:&unk_1F39D93C8];
            }

            else
            {
              v149 = 0;
            }

            v34 = v151;
          }

          else
          {
            v14 = v153;
            if (!v149)
            {
              v149 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);

              if ([v156 count])
              {
                v26 = 0;
                do
                {
                  [v149 addObject:&unk_1F39D93C8];
                  ++v26;
                }

                while (v26 < [v156 count]);
              }

              v141 = v25;
              v14 = v153;
            }

            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
            [v149 addObject:v27];

            v28 = unsignedIntegerValue - 1;
            v29 = v150;
            do
            {
              v30 = v14;
              v31 = v29++;
              v32 = [v138 objectAtIndexedSubscript:v31];
              [v148 addObject:v32];

              v14 = v30 + 1;
              v33 = [v137 objectAtIndexedSubscript:v30];
              [v141 addObject:v33];

              --v28;
            }

            while (v28);
            v150 = v29;
            targets = v145;
            v12 = v146;
            v34 = v151;
            inBetweenCounts = v147;
            v35 = v156;
          }

          [v148 addObject:v16];
          ++v150;
          [selfCopy weightForTargetAtIndex:v34];
          *&v64 = v64;
          v65 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
          [v143 addObject:v65];

          v15 = v151;
          [v35 addObject:v16];
          goto LABEL_61;
        }

        name2 = [v16 name];
        v20 = [name2 componentsSeparatedByString:@"__"];

        v21 = [v20 count];
        if (v21 == 1)
        {
          v22 = avt_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v170 = v20;
            _os_log_error_impl(&dword_1BB472000, v22, OS_LOG_TYPE_ERROR, "Error: Failed to create corrective with only one target: %@", buf, 0xCu);
          }
        }

        else
        {
          v36 = v21;
          v152 = v15;
          v155 = v13;
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v37 = v20;
          v38 = [v37 countByEnumeratingWithState:&v164 objects:v173 count:16];
          v142 = v20;
          if (!v38)
          {

LABEL_37:
            v50 = v140;
            if (!v154)
            {
              v154 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v51 = [v147 objectAtIndexedSubscript:v152];
            unsignedIntegerValue2 = [v51 unsignedIntegerValue];

            v53 = v153;
            if (unsignedIntegerValue2 < 2)
            {
              if (v144)
              {
                [v144 addObject:&unk_1F39D93C8];
              }

              else
              {
                v144 = 0;
              }

              v63 = v147;
              v58 = v150;
            }

            else
            {
              if (!v144)
              {
                v144 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v54 = objc_alloc_init(MEMORY[0x1E695DF70]);

                if ([v139 count])
                {
                  v55 = 0;
                  do
                  {
                    [v144 addObject:&unk_1F39D93C8];
                    ++v55;
                  }

                  while (v55 < [v139 count]);
                }

                v155 = v54;
                v53 = v153;
              }

              v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2];
              [v144 addObject:v56];

              v57 = unsignedIntegerValue2 - 1;
              v58 = v150;
              do
              {
                v59 = v53;
                v60 = v58++;
                v61 = [v138 objectAtIndexedSubscript:v60];
                [v154 addObject:v61];

                v53 = v59 + 1;
                v62 = [v137 objectAtIndexedSubscript:v59];
                [v155 addObject:v62];

                --v57;
              }

              while (v57);
              v153 = v53;
              v63 = v147;
              v50 = v140;
            }

            [v154 addObject:v16];
            v66 = v139;
            if (!v139)
            {
              v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v67 = objc_alloc_init(MEMORY[0x1E695DF70]);

              v50 = v67;
            }

            v150 = v58 + 1;
            v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
            v139 = v66;
            [v66 addObject:v68];

            v140 = v50;
            [v50 addObjectsFromArray:v37];
            v13 = v155;
            v15 = v152;
            targets = v145;
            inBetweenCounts = v63;
            v20 = v142;
            goto LABEL_60;
          }

          v39 = v38;
          v40 = *v165;
          v41 = 1;
          v42 = selfCopy;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v165 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v44 = *(*(&v164 + 1) + 8 * i);
              if ([v42 _weightIndexForTargetNamed:v44] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v45 = avt_default_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  name3 = [v16 name];
                  *buf = 138412546;
                  v170 = v44;
                  v171 = 2112;
                  v172 = name3;
                  _os_log_error_impl(&dword_1BB472000, v45, OS_LOG_TYPE_ERROR, "Error: Failed to find index of driving target %@ for corrective %@", buf, 0x16u);
                }

                if (v4)
                {
                  name4 = [v16 name];
                  (v4)[2](v4, name4, v44, v36);
                }

                v41 = 0;
                v42 = selfCopy;
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v164 objects:v173 count:16];
          }

          while (v39);

          targets = v145;
          v20 = v142;
          if (v41)
          {
            goto LABEL_37;
          }

          inBetweenCounts = v147;
          if (v147)
          {
            v48 = [v147 objectAtIndexedSubscript:v152];
            unsignedIntegerValue3 = [v48 unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue3 = 1;
          }

          v15 = v152;
          v136 += unsignedIntegerValue3;
          v13 = v155;
        }

LABEL_60:

        v14 = v153;
        v12 = v146;
LABEL_61:

        if (++v15 == v12)
        {
          goto LABEL_64;
        }
      }
    }

    v136 = 0;
    v13 = 0;
    v144 = 0;
    v139 = 0;
    v140 = 0;
    v154 = 0;
    v141 = 0;
    v149 = 0;
LABEL_64:
    v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v140, "count")}];
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    obj = v140;
    v70 = [obj countByEnumeratingWithState:&v160 objects:v168 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v161;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          v74 = v69;
          if (*v161 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v160 + 1) + 8 * j);
          v159[0] = MEMORY[0x1E69E9820];
          v159[1] = 3221225472;
          v159[2] = __76__SCNMorpher_AVTExtension__avt_buildInternalSupportForCorrectivesWithBlock___block_invoke;
          v159[3] = &unk_1E7F49A60;
          v159[4] = v75;
          v76 = [v156 indexOfObjectPassingTest:v159];
          if (v76 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v77 = avt_default_log();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v170 = v75;
              _os_log_error_impl(&dword_1BB472000, v77, OS_LOG_TYPE_ERROR, "Error: Failed to find index for driving target %@", buf, 0xCu);
            }

            v69 = v74;
          }

          else
          {
            v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v76];
            v69 = v74;
            [v74 addObject:v77];
          }
        }

        v71 = [obj countByEnumeratingWithState:&v160 objects:v168 count:16];
      }

      while (v71);
    }

    v78 = [v148 count];
    if (v78 < [v149 count])
    {
      v79 = avt_default_log();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        [(SCNMorpher(AVTExtension) *)v79 avt_buildInternalSupportForCorrectivesWithBlock:v80, v81, v82, v83, v84, v85, v86];
      }
    }

    v87 = [v154 count];
    if (v87 < [v144 count])
    {
      v88 = avt_default_log();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        [(SCNMorpher(AVTExtension) *)v88 avt_buildInternalSupportForCorrectivesWithBlock:v89, v90, v91, v92, v93, v94, v95];
      }
    }

    v96 = [v148 count];
    v97 = [v154 count] + v96;
    if (v97 != [v138 count] - v136)
    {
      v98 = avt_default_log();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        [(SCNMorpher(AVTExtension) *)v98 avt_buildInternalSupportForCorrectivesWithBlock:v99, v100, v101, v102, v103, v104, v105];
      }
    }

    if ([v144 count])
    {
      v106 = [v149 count];
      v107 = [v144 count] + v106;
      if (v107 != [v147 count])
      {
        v108 = avt_default_log();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v108 avt_buildInternalSupportForCorrectivesWithBlock:v109, v110, v111, v112, v113, v114, v115];
        }
      }

      v116 = [v141 count];
      v117 = [v13 count] + v116;
      if (v117 != [v137 count])
      {
        v118 = avt_default_log();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v118 avt_buildInternalSupportForCorrectivesWithBlock:v119, v120, v121, v122, v123, v124, v125];
        }
      }

      v126 = [v144 count];
      if (v126 != [v139 count])
      {
        v127 = avt_default_log();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v127 avt_buildInternalSupportForCorrectivesWithBlock:v128, v129, v130, v131, v132, v133, v134];
        }
      }
    }

    if (v139)
    {
      [selfCopy setTargetsAndInBetweens:v148 inBetweenCounts:v149 inBetweenWeights:v141 correctives:v154 driverCounts:v139 driverIndices:v69 inBetweenCounts:v144 inBetweenWeights:v13];
    }
  }

  v135 = *MEMORY[0x1E69E9840];
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

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end