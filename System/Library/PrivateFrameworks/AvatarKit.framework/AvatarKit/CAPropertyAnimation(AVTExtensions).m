@interface CAPropertyAnimation(AVTExtensions)
- (uint64_t)avt_isUseless;
@end

@implementation CAPropertyAnimation(AVTExtensions)

- (uint64_t)avt_isUseless
{
  v107 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    v3 = [v2 keyPath];
    v4 = [v3 lastPathComponent];
    v5 = [v4 isEqualToString:@"position"];

    if (v5)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v6 = [v2 values];
      v7 = [v6 countByEnumeratingWithState:&v97 objects:v106 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v98;
        v74 = vdupq_n_s32(0x3A83126Fu);
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v98 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v97 + 1) + 8 * v10) avt_float3Value];
          v12 = vcgtq_f32(vabsq_f32(v11), v74);
          v12.i32[3] = v12.i32[2];
          if ((vmaxvq_u32(v12) & 0x80000000) != 0)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v97 objects:v106 count:16];
            v13 = 1;
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_73;
          }
        }

LABEL_71:
        v13 = 0;
LABEL_73:

LABEL_74:
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    v14 = [v2 keyPath];
    v15 = [v14 lastPathComponent];
    v16 = [v15 isEqualToString:@"eulerAngles"];

    if (v16)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v6 = [v2 values];
      v17 = [v6 countByEnumeratingWithState:&v93 objects:v105 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v94;
        v75 = vdupq_n_s32(0x3A83126Fu);
LABEL_16:
        v20 = 0;
        while (1)
        {
          if (*v94 != v19)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v93 + 1) + 8 * v20) avt_float3Value];
          v22 = vcgtq_f32(vabsq_f32(v21), v75);
          v22.i32[3] = v22.i32[2];
          if ((vmaxvq_u32(v22) & 0x80000000) != 0)
          {
            goto LABEL_71;
          }

          if (v18 == ++v20)
          {
            v18 = [v6 countByEnumeratingWithState:&v93 objects:v105 count:16];
            v13 = 1;
            if (v18)
            {
              goto LABEL_16;
            }

            goto LABEL_73;
          }
        }
      }

LABEL_72:
      v13 = 1;
      goto LABEL_73;
    }

    v23 = [v2 keyPath];
    v24 = [v23 lastPathComponent];
    if ([v24 hasSuffix:@"eulerAngles.x"])
    {
      goto LABEL_26;
    }

    v25 = [v2 keyPath];
    v26 = [v25 lastPathComponent];
    if ([v26 hasSuffix:@"eulerAngles.y"])
    {

LABEL_26:
      goto LABEL_27;
    }

    v32 = [v2 keyPath];
    v33 = [v32 lastPathComponent];
    v34 = [v33 hasSuffix:@"eulerAngles.z"];

    if (v34)
    {
LABEL_27:
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v6 = [v2 values];
      v27 = [v6 countByEnumeratingWithState:&v89 objects:v104 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v90;
LABEL_29:
        v30 = 0;
        while (1)
        {
          if (*v90 != v29)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v89 + 1) + 8 * v30) floatValue];
          if (fabsf(v31) > 0.001)
          {
            goto LABEL_71;
          }

          if (v28 == ++v30)
          {
            v28 = [v6 countByEnumeratingWithState:&v89 objects:v104 count:16];
            v13 = 1;
            if (v28)
            {
              goto LABEL_29;
            }

            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    v35 = [v2 keyPath];
    v36 = [v35 lastPathComponent];
    v37 = [v36 isEqualToString:@"scale"];

    if (v37)
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v6 = [v2 values];
      v38 = [v6 countByEnumeratingWithState:&v85 objects:v103 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v86;
        __asm { FMOV            V1.4S, #-1.0 }

        v73 = vdupq_n_s32(0x3A83126Fu);
        v76 = _Q1;
LABEL_40:
        v46 = 0;
        while (1)
        {
          if (*v86 != v40)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v85 + 1) + 8 * v46) avt_float3Value];
          v48 = vcgtq_f32(vabsq_f32(vaddq_f32(v47, v76)), v73);
          v48.i32[3] = v48.i32[2];
          if ((vmaxvq_u32(v48) & 0x80000000) != 0)
          {
            goto LABEL_71;
          }

          if (v39 == ++v46)
          {
            v39 = [v6 countByEnumeratingWithState:&v85 objects:v103 count:16];
            v13 = 1;
            if (v39)
            {
              goto LABEL_40;
            }

            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    v49 = [v2 keyPath];
    v50 = [v49 lastPathComponent];
    if (([v50 hasSuffix:@"scale.x"] & 1) == 0)
    {
      v51 = [v2 keyPath];
      v52 = [v51 lastPathComponent];
      if (([v52 hasSuffix:@"scale.y"] & 1) == 0)
      {
        v58 = [v2 keyPath];
        v59 = [v58 lastPathComponent];
        v60 = [v59 hasSuffix:@"scale.z"];

        if ((v60 & 1) == 0)
        {
          v61 = [v2 keyPath];
          v62 = [v61 lastPathComponent];
          v63 = [v62 isEqualToString:@"orientation"];

          if (!v63)
          {
            v13 = 0;
            goto LABEL_74;
          }

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v6 = [v2 values];
          v64 = [v6 countByEnumeratingWithState:&v77 objects:v101 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v78;
LABEL_64:
            v67 = 0;
            while (1)
            {
              if (*v78 != v66)
              {
                objc_enumerationMutation(v6);
              }

              [*(*(&v77 + 1) + 8 * v67) avt_float4Value];
              v69 = vmulq_f32(v68, v68);
              v70 = atan2f(sqrtf(v69.f32[2] + vaddv_f32(*v69.f32)), v68.f32[3]);
              if (fabsf(v70 + v70) > 0.001)
              {
                goto LABEL_71;
              }

              if (v65 == ++v67)
              {
                v65 = [v6 countByEnumeratingWithState:&v77 objects:v101 count:16];
                v13 = 1;
                if (v65)
                {
                  goto LABEL_64;
                }

                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }
    }

LABEL_51:
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v6 = [v2 values];
    v53 = [v6 countByEnumeratingWithState:&v81 objects:v102 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v82;
LABEL_53:
      v56 = 0;
      while (1)
      {
        if (*v82 != v55)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v81 + 1) + 8 * v56) floatValue];
        if (fabsf(v57 + -1.0) > 0.001)
        {
          goto LABEL_71;
        }

        if (v54 == ++v56)
        {
          v54 = [v6 countByEnumeratingWithState:&v81 objects:v102 count:16];
          v13 = 1;
          if (v54)
          {
            goto LABEL_53;
          }

          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

  v13 = 0;
LABEL_75:
  v71 = *MEMORY[0x1E69E9840];
  return v13;
}

@end