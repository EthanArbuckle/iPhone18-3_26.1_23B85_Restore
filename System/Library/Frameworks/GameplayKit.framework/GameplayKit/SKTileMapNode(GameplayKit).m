@interface SKTileMapNode(GameplayKit)
+ (id)tileMapNodesWithTileSet:()GameplayKit columns:rows:tileSize:fromNoiseMap:tileTypeNoiseMapThresholds:;
@end

@implementation SKTileMapNode(GameplayKit)

+ (id)tileMapNodesWithTileSet:()GameplayKit columns:rows:tileSize:fromNoiseMap:tileTypeNoiseMapThresholds:
{
  v75 = a7;
  v79 = a6;
  v90 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a8;
  v88 = a9;
  v76 = v14;
  v89 = [v88 count];
  [v14 sampleCount];
  v87 = v15;
  [v14 sampleCount];
  v86 = v16;
  v17 = v89 + 1;
  v18 = v70 - ((8 * (v89 + 1) + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 8 * (v89 + 1));
  if (v17)
  {
    v19 = (v70 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = v17;
    do
    {
      v21 = [MEMORY[0x277CBEB18] array];
      v22 = *v19;
      *v19++ = v21;

      --v20;
    }

    while (v20);
  }

  v70[1] = v70;
  v71 = a1;
  v72 = a2;
  v23 = [MEMORY[0x277CDCF98] emptyTileGroup];
  if (!v75 || !v79)
  {
    goto LABEL_30;
  }

  v25 = 0;
  v26 = v87;
  *&v26 = v87;
  if (v17 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v17;
  }

  *&v87 = v27 - 1;
  v73 = SDWORD1(v86) * (1.0 / v75);
  v83 = *&v26 * (1.0 / v79);
  v78 = 0.16667;
  v77 = 0.83333;
  while (2)
  {
    v28 = 0;
    v74 = v25;
    *&v24 = (v25 + v78) * v73;
    v86 = v24;
    *&v24 = (v25 + 0.5) * v73;
    v85 = v24;
    *&v26 = (v25 + v77) * v73;
    v84 = v26;
    do
    {
      *&v26 = (v28 + v78) * v83;
      v82 = v26;
      DWORD1(v26) = v86;
      v29 = v76;
      [v76 interpolatedValueAtPosition:*&v26];
      v31 = v30;
      *&v32 = (v28 + 0.5) * v83;
      v81 = v32;
      DWORD1(v32) = v86;
      [v29 interpolatedValueAtPosition:*&v32];
      v34 = v33;
      *&v35 = (v28 + v77) * v83;
      v80 = v35;
      DWORD1(v35) = v86;
      [v29 interpolatedValueAtPosition:*&v35];
      v37 = v36;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v85, v82))}];
      v39 = v38;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v85, v81))}];
      v41 = v40;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v85, v80))}];
      v43 = v42;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v84, v82))}];
      v45 = v44;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v84, v81))}];
      v47 = v46;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v84, v80))}];
      if (!v89)
      {
        v49 = 0;
LABEL_22:
        v54 = 0;
        do
        {
          while (1)
          {
            v55 = v54 > v49 ? -1 : v54;
            v56 = [v13 tileGroups];
            v57 = [v56 count];

            v58 = *&v18[8 * v54];
            if (v55 < v57)
            {
              break;
            }

            [*&v18[8 * v54++] addObject:v23];
            if (v17 == v54)
            {
              goto LABEL_12;
            }
          }

          v59 = [v13 tileGroups];
          v60 = [v59 objectAtIndexedSubscript:v55];
          [v58 addObject:v60];

          ++v54;
        }

        while (v17 != v54);
        goto LABEL_12;
      }

      v49 = 0;
      v50 = ((v48 + v47) + ((v45 + (v43 + v41)) + ((v39 + v37) + (v34 + v31)))) * 0.11111;
      while (1)
      {
        v51 = [v88 objectAtIndexedSubscript:v49];
        [v51 floatValue];
        v53 = v52;

        if (v50 < v53)
        {
          break;
        }

        if (v87 == v49)
        {
          goto LABEL_12;
        }

        if (v89 == ++v49)
        {
          v49 = v89;
          break;
        }
      }

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_12:
      ++v28;
    }

    while (v28 != v79);
    v25 = v74 + 1;
    if (v74 + 1 != v75)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = v72;
  v63 = v71;
  if (v17)
  {
    v64 = (v70 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v65 = v17;
    do
    {
      v66 = [MEMORY[0x277CDCFA0] tileMapNodeWithTileSet:v13 columns:v79 rows:v75 tileSize:*v64 tileGroupLayout:{v63, v62}];
      [v61 addObject:v66];

      ++v64;
      --v65;
    }

    while (v65);

    v67 = 8 * v89;
    do
    {

      v67 -= 8;
    }

    while (v67 != -8);
  }

  else
  {
  }

  v68 = *MEMORY[0x277D85DE8];

  return v61;
}

@end