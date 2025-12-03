@interface IOSurface(BaseBoard)
+ (uint64_t)bs_IOSurfaceWithWidth:()BaseBoard height:options:;
- (BSCGImageFromIOSurfaceBuilder)CGImageBuilder;
@end

@implementation IOSurface(BaseBoard)

+ (uint64_t)bs_IOSurfaceWithWidth:()BaseBoard height:options:
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"options"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      v70 = v42;
      v71 = 2114;
      v72 = v44;
      v73 = 2048;
      selfCopy3 = self;
      v75 = 2114;
      v76 = @"IOSurface+BaseBoard.m";
      v77 = 1024;
      v78 = 52;
      v79 = 2114;
      v80 = v41;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v45 = v41;
    qword_1EAD33B00 = [v41 UTF8String];
    __break(0);
    JUMPOUT(0x18FF2066CLL);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"in_width >= 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *buf = 138544642;
      v70 = v47;
      v71 = 2114;
      v72 = v49;
      v73 = 2048;
      selfCopy3 = self;
      v75 = 2114;
      v76 = @"IOSurface+BaseBoard.m";
      v77 = 1024;
      v78 = 53;
      v79 = 2114;
      v80 = v46;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v50 = v46;
    qword_1EAD33B00 = [v46 UTF8String];
    __break(0);
    JUMPOUT(0x18FF20774);
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"in_height >= 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138544642;
      v70 = v52;
      v71 = 2114;
      v72 = v54;
      v73 = 2048;
      selfCopy3 = self;
      v75 = 2114;
      v76 = @"IOSurface+BaseBoard.m";
      v77 = 1024;
      v78 = 54;
      v79 = 2114;
      v80 = v51;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v55 = v51;
    qword_1EAD33B00 = [v51 UTF8String];
    __break(0);
    JUMPOUT(0x18FF2087CLL);
  }

  if (MEMORY[0x193AE4AD0](*MEMORY[0x1E696D130]) >= a3 && MEMORY[0x193AE4AD0](*MEMORY[0x1E696CF58]) >= a4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    [dictionary setObject:v12 forKey:*MEMORY[0x1E696CDE0]];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
    [dictionary setObject:v13 forKey:*MEMORY[0x1E696CD90]];

    [dictionary setObject:&unk_1F03B7548 forKey:*MEMORY[0x1E696CD88]];
    v14 = *MEMORY[0x1E696CE58];
    if ((*a5 & 4) != 0)
    {
      v19 = MEMORY[0x193AE4A90](*MEMORY[0x1E696CE58], 8 * a3);
      [dictionary setObject:&unk_1F03B7560 forKey:*MEMORY[0x1E696CDA0]];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:8];
      [dictionary setObject:v20 forKey:*MEMORY[0x1E696CD78]];

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v19];
      [dictionary setObject:v18 forKey:*MEMORY[0x1E696CD80]];
      v16 = v19 * a4;
    }

    else
    {
      v15 = MEMORY[0x193AE4A90](*MEMORY[0x1E696CE58], 4 * a3);
      v16 = v15 * a4;
      if ((*a5 & 2) != 0)
      {
        if (*a5)
        {
          [dictionary setObject:&unk_1F03B7578 forKey:*MEMORY[0x1E696CDA0]];
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4];
          [dictionary setObject:v39 forKey:*MEMORY[0x1E696CD78]];

          v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v15];
          [dictionary setObject:v40 forKey:*MEMORY[0x1E696CD80]];
        }

        else
        {
          v23 = MEMORY[0x193AE4A90](v14, a3);
          v24 = MEMORY[0x1E696CDD8];
          v66[0] = *MEMORY[0x1E696CDD8];
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
          v67[0] = v63;
          v66[1] = *MEMORY[0x1E696CDB8];
          v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
          v67[1] = v62;
          v25 = MEMORY[0x1E696CDA8];
          v66[2] = *MEMORY[0x1E696CDA8];
          v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4];
          v67[2] = v61;
          v66[3] = *MEMORY[0x1E696CDB0];
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v15];
          v27 = MEMORY[0x1E696CDC8];
          v28 = *MEMORY[0x1E696CDC8];
          v60 = v26;
          v67[3] = v26;
          v67[4] = &unk_1F03B7590;
          v29 = MEMORY[0x1E696CDD0];
          v30 = *MEMORY[0x1E696CDD0];
          v66[4] = v28;
          v66[5] = v30;
          v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
          v67[5] = v59;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:6];
          v68[0] = v58;
          v64[0] = *v24;
          [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
          v57 = v31 = v29;
          v65[0] = v57;
          v64[1] = *MEMORY[0x1E696CDB8];
          v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
          v65[1] = v56;
          v64[2] = *v25;
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:1];
          v65[2] = v32;
          v64[3] = *MEMORY[0x1E696CDB0];
          v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v23];
          v65[3] = v33;
          v64[4] = *v27;
          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
          v35 = v23 * a4;
          v65[4] = v34;
          v64[5] = *v31;
          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v35];
          v65[5] = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:6];
          v68[1] = v37;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];

          [dictionary setObject:&unk_1F03B75A8 forKey:*MEMORY[0x1E696CDA0]];
          [dictionary setObject:v38 forKey:*MEMORY[0x1E696CDC0]];

          v16 += v35;
        }

        goto LABEL_12;
      }

      [dictionary setObject:&unk_1F03B75C0 forKey:*MEMORY[0x1E696CDA0]];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4];
      [dictionary setObject:v17 forKey:*MEMORY[0x1E696CD78]];

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v15];
      [dictionary setObject:v18 forKey:*MEMORY[0x1E696CD80]];
    }

    *a5 &= 0xFFFFFFFFFFFFFFFCLL;
LABEL_12:
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{MEMORY[0x193AE4A90](*MEMORY[0x1E696CE30], v16)}];
    [dictionary setObject:v21 forKey:*MEMORY[0x1E696CD70]];

    v10 = [objc_alloc(MEMORY[0x1E696CDE8]) initWithProperties:dictionary];
    return v10;
  }

  return 0;
}

- (BSCGImageFromIOSurfaceBuilder)CGImageBuilder
{
  v2 = [BSCGImageFromIOSurfaceBuilder alloc];
  selfCopy = self;
  if (v2)
  {
    v6.receiver = v2;
    v6.super_class = BSCGImageFromIOSurfaceBuilder;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    v2 = v4;
    if (v4)
    {
      objc_storeStrong(&v4->_surface, self);
    }
  }

  return v2;
}

@end