@interface NSTextLayoutManager(LayoutFragments)
- (id)_mk_lastLineSegment;
- (id)_mk_layoutFragments;
- (id)_mk_truncatedRanges;
@end

@implementation NSTextLayoutManager(LayoutFragments)

- (id)_mk_lastLineSegment
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24002;
  v9 = __Block_byref_object_dispose__24003;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__NSTextLayoutManager_LayoutFragments___mk_lastLineSegment__block_invoke;
  v4[3] = &unk_1E76C9A50;
  v4[4] = a1;
  v4[5] = &v5;
  v1 = [a1 enumerateTextLayoutFragmentsFromLocation:0 options:1 usingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_mk_truncatedRanges
{
  v2 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__NSTextLayoutManager_LayoutFragments___mk_truncatedRanges__block_invoke;
  v6[3] = &unk_1E76C9A00;
  v3 = v2;
  v7 = v3;
  v4 = [a1 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v6];

  return v3;
}

- (id)_mk_layoutFragments
{
  v2 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSTextLayoutManager_LayoutFragments___mk_layoutFragments__block_invoke;
  v8[3] = &unk_1E76C99D8;
  v8[4] = a1;
  v3 = v2;
  v9 = v3;
  v4 = [a1 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v8];
  v5 = v9;
  v6 = v3;

  return v3;
}

@end