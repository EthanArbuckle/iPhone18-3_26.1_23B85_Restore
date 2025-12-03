@interface PKAutoRefineQueryItem
- (id).cxx_construct;
- (id)initWithQueryItem:(void *)item usingStrokeProvider:;
@end

@implementation PKAutoRefineQueryItem

- (id)initWithQueryItem:(void *)item usingStrokeProvider:
{
  v117 = *MEMORY[0x1E69E9840];
  v99 = a2;
  itemCopy = item;
  if (self)
  {
    v108.receiver = self;
    v108.super_class = PKAutoRefineQueryItem;
    self = objc_msgSendSuper2(&v108, sel_init);
    if (self)
    {
      textResult = [v99 textResult];
      v7 = [textResult copy];
      v8 = self[10];
      self[10] = v7;

      strokeIdentifiers = [v99 strokeIdentifiers];
      v10 = [strokeIdentifiers copy];
      v11 = self[12];
      self[12] = v10;

      locale = [v99 locale];
      v13 = [locale copy];
      v14 = self[15];
      self[15] = v13;

      v15 = MEMORY[0x1E695DF70];
      strokeIdentifiers2 = [v99 strokeIdentifiers];
      v17 = [v15 arrayWithCapacity:{objc_msgSend(strokeIdentifiers2, "count")}];

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v18 = self[12];
      v19 = [v18 countByEnumeratingWithState:&v104 objects:v116 count:16];
      if (v19)
      {
        v20 = *v105;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v105 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v104 + 1) + 8 * i);
            if ([itemCopy isValidStrokeIdentifier:v22])
            {
              v23 = v22;
              strokeUUID = [v23 strokeUUID];
              [v17 addObject:strokeUUID];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v104 objects:v116 count:16];
        }

        while (v19);
      }

      objc_storeStrong(self + 13, v17);
      v25 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        topTranscription = [self[10] topTranscription];
        v96 = [self[12] count];
        tokenColumnCount = [self[10] tokenColumnCount];
        *buf = 138740483;
        v111 = topTranscription;
        v112 = 2048;
        v113 = v96;
        v114 = 2048;
        v115 = tokenColumnCount;
        _os_log_debug_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEBUG, "AutoRefine Creating PKAutoRefineQueryItem transcription _%{sensitive}@_, %ld strokes and %ld token columns", buf, 0x20u);
      }

      std::vector<CGRect>::reserve(self + 1, [self[10] tokenColumnCount]);
      v26 = 0;
      v27 = MEMORY[0x1E695F050];
      *&v28 = 138412290;
      v98 = v28;
      while (1)
      {
        tokenColumnCount2 = [self[10] tokenColumnCount];
        v30 = self[10];
        if (v26 >= tokenColumnCount2)
        {
          break;
        }

        v31 = self[12];
        v32 = [v30 strokeIndexesForColumnsInRange:{v26, 1}];
        v33 = [v31 objectsAtIndexes:v32];

        x = *v27;
        y = v27[1];
        width = v27[2];
        height = v27[3];
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v38 = v33;
        v39 = [v38 countByEnumeratingWithState:&v100 objects:v109 count:16];
        if (v39)
        {
          v40 = *v101;
          while (2)
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v101 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v42 = *(*(&v100 + 1) + 8 * j);
              if (![itemCopy isValidStrokeIdentifier:v42])
              {
                v48 = os_log_create("com.apple.pencilkit", "AutoRefine");
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v98;
                  v111 = v42;
                  _os_log_debug_impl(&dword_1C7CCA000, v48, OS_LOG_TYPE_DEBUG, "AutoRefine Unexpected issue while creating PKAutoRefineQueryItem, stroke with Identifier %@ not found in stroke provider.", buf, 0xCu);
                }

                x = *v27;
                y = v27[1];
                width = v27[2];
                height = v27[3];
                goto LABEL_28;
              }

              v43 = [itemCopy strokeForIdentifier:v42];
              [v43 bounds];
              v121.origin.x = v44;
              v121.origin.y = v45;
              v121.size.width = v46;
              v121.size.height = v47;
              v118.origin.x = x;
              v118.origin.y = y;
              v118.size.width = width;
              v118.size.height = height;
              v119 = CGRectUnion(v118, v121);
              x = v119.origin.x;
              y = v119.origin.y;
              width = v119.size.width;
              height = v119.size.height;
            }

            v39 = [v38 countByEnumeratingWithState:&v100 objects:v109 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

LABEL_28:

        v49 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v120.origin.x = x;
          v120.origin.y = y;
          v120.size.width = width;
          v120.size.height = height;
          v62 = NSStringFromCGRect(v120);
          *buf = 134218242;
          v111 = v26;
          v112 = 2112;
          v113 = v62;
          _os_log_debug_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEBUG, "AutoRefine PKAutoRefineQueryItem bounds for token column %ld = %@", buf, 0x16u);
        }

        v50 = self[2];
        v51 = self[3];
        if (v50 >= v51)
        {
          v53 = self[1];
          v54 = v50 - v53;
          v55 = (v50 - v53) >> 5;
          v56 = v55 + 1;
          if ((v55 + 1) >> 59)
          {
            std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
          }

          v57 = v51 - v53;
          if (v57 >> 4 > v56)
          {
            v56 = v57 >> 4;
          }

          if (v57 >= 0x7FFFFFFFFFFFFFE0)
          {
            v56 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>((self + 1), v56);
          }

          v58 = v55;
          v59 = (32 * v55);
          *v59 = x;
          v59[1] = y;
          v59[2] = width;
          v59[3] = height;
          v52 = 32 * v55 + 32;
          v60 = &v59[-4 * v58];
          memcpy(v60, v53, v54);
          v61 = self[1];
          self[1] = v60;
          self[2] = v52;
          self[3] = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          *v50 = x;
          *(v50 + 1) = y;
          v52 = (v50 + 32);
          *(v50 + 2) = width;
          *(v50 + 3) = height;
        }

        self[2] = v52;

        ++v26;
      }

      std::vector<CGRect>::reserve(self + 4, [v30 tokenColumnCount]);
      tokenColumnCount3 = [self[10] tokenColumnCount];
      if (tokenColumnCount3 > (self[9] - self[7]) >> 3)
      {
        if (!(tokenColumnCount3 >> 61))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>((self + 7), tokenColumnCount3);
        }

        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      for (k = 0; k < [self[10] tokenColumnCount]; ++k)
      {
        [v99 rotatedColumnBounds:k];
        v69 = self[5];
        v70 = self[6];
        if (v69 >= v70)
        {
          v72 = self[4];
          v73 = v69 - v72;
          v74 = (v69 - v72) >> 5;
          v75 = v74 + 1;
          if ((v74 + 1) >> 59)
          {
            std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
          }

          v76 = v70 - v72;
          if (v76 >> 4 > v75)
          {
            v75 = v76 >> 4;
          }

          if (v76 >= 0x7FFFFFFFFFFFFFE0)
          {
            v75 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v75)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>((self + 4), v75);
          }

          v77 = (32 * v74);
          *v77 = v65;
          v77[1] = v66;
          v77[2] = v67;
          v77[3] = v68;
          v71 = 32 * v74 + 32;
          memcpy(0, v72, v73);
          v78 = self[4];
          self[4] = 0;
          self[5] = v71;
          self[6] = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v69 = v65;
          *(v69 + 1) = v66;
          v71 = (v69 + 32);
          *(v69 + 2) = v67;
          *(v69 + 3) = v68;
        }

        self[5] = v71;
        [v99 writingOrientationAngleAtColumn:k];
        v81 = self[8];
        v80 = self[9];
        if (v81 >= v80)
        {
          v83 = self[7];
          v84 = v81 - v83;
          v85 = (v81 - v83) >> 3;
          v86 = v85 + 1;
          if ((v85 + 1) >> 61)
          {
            std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
          }

          v87 = v80 - v83;
          if (v87 >> 2 > v86)
          {
            v86 = v87 >> 2;
          }

          if (v87 >= 0x7FFFFFFFFFFFFFF8)
          {
            v88 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v88 = v86;
          }

          if (v88)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>((self + 7), v88);
          }

          v89 = (v81 - v83) >> 3;
          v90 = (8 * v85);
          v91 = (8 * v85 - 8 * v89);
          *v90 = v79;
          v82 = v90 + 1;
          memcpy(v91, v83, v84);
          v92 = self[7];
          self[7] = v91;
          self[8] = v82;
          self[9] = 0;
          if (v92)
          {
            operator delete(v92);
          }
        }

        else
        {
          *v81 = v79;
          v82 = v81 + 8;
        }

        self[8] = v82;
      }

      refinedTokenColumns = [v99 refinedTokenColumns];
      [self setRefinedTokenColumns:refinedTokenColumns];
    }
  }

  return self;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end