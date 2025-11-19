@interface NSObject(AXCollectionsExtensions)
- (id)ax_prettyDescription;
- (void)_ax_appendPrettyDescriptionToString:()AXCollectionsExtensions indentationString:visitedCollections:;
@end

@implementation NSObject(AXCollectionsExtensions)

- (void)_ax_appendPrettyDescriptionToString:()AXCollectionsExtensions indentationString:visitedCollections:
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 conformsToProtocol:&unk_1F058D500];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    _AXAssert(0, "/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries/Source/AXCoreUtilities/source/DataStructures/NSObject+AXCollectionsExtensions.m", 0x1B, "[NSObject(AXCollectionsExtensions) _ax_appendPrettyDescriptionToString:indentationString:visitedCollections:]", @"accumulatorString <%@: %p> was supposed to be a mutable string", v14, v15, v16, v13);
  }

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      _AXAssert(0, "/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries/Source/AXCoreUtilities/source/DataStructures/NSObject+AXCollectionsExtensions.m", 0x1C, "[NSObject(AXCollectionsExtensions) _ax_appendPrettyDescriptionToString:indentationString:visitedCollections:]", @"indentationString <%@: %p> was supposed to be a mutable string", v19, v20, v21, v18);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _AXAssert(0, "/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries/Source/AXCoreUtilities/source/DataStructures/NSObject+AXCollectionsExtensions.m", 0x1D, "[NSObject(AXCollectionsExtensions) _ax_appendPrettyDescriptionToString:indentationString:visitedCollections:]", @"visitedCollections <%@: %p> was supposed to be a mutable set", v24, v25, v26, v23);
    }

    v27 = [MEMORY[0x1E696B098] valueWithNonretainedObject:a1];
    if ([v10 containsObject:v27])
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      [v8 appendFormat:@"<%@: %p>", v29, a1];
    }

    else
    {
      [v10 addObject:v27];
      [(__CFString *)v9 appendString:@"    "];
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v53 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 appendString:@"{"];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __110__NSObject_AXCollectionsExtensions___ax_appendPrettyDescriptionToString_indentationString_visitedCollections___block_invoke;
        v45[3] = &unk_1E735B150;
        v49 = &v50;
        v46 = v8;
        v47 = v9;
        v48 = v10;
        [a1 enumerateKeysAndObjectsUsingBlock:v45];

        v31 = @"}";
        v32 = v46;
      }

      else
      {
        [v8 appendString:@"["];
        v40 = v27;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v32 = a1;
        v33 = [v32 countByEnumeratingWithState:&v41 objects:v54 count:16];
        if (v33)
        {
          v34 = *v42;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v42 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v41 + 1) + 8 * i);
              if ((v51[3] & 1) == 0)
              {
                *(v51 + 24) = 1;
                [v8 appendString:@"\n"];
              }

              [v8 appendString:v9];
              [v36 _ax_appendPrettyDescriptionToString:v8 indentationString:v9 visitedCollections:v10];
              [v8 appendString:{@", \n"}];
            }

            v33 = [v32 countByEnumeratingWithState:&v41 objects:v54 count:16];
          }

          while (v33);
        }

        v27 = v40;
        v31 = @"]";
      }

      v37 = [@"    " length];
      [(__CFString *)v9 deleteCharactersInRange:[(__CFString *)v9 length]- v37, v37];
      [v10 removeObject:v27];
      if (*(v51 + 24))
      {
        v38 = v9;
      }

      else
      {
        v38 = @" ";
      }

      [v8 appendString:v38];
      [v8 appendString:v31];
      _Block_object_dispose(&v50, 8);
    }
  }

  else
  {
    v30 = [a1 ax_prettyDescription];
    if (v30)
    {
      [v8 appendString:v30];
    }

    else
    {
      [v8 appendFormat:@"%@", 0];
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)ax_prettyDescription
{
  if ([a1 conformsToProtocol:&unk_1F058D500])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0579798];
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0579798];
    v4 = objc_opt_new();
    [a1 _ax_appendPrettyDescriptionToString:v2 indentationString:v3 visitedCollections:v4];
  }

  else
  {
    v2 = [a1 description];
  }

  return v2;
}

@end