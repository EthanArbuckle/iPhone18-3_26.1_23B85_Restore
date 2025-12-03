@interface SKNode(GameplayKit)
+ (id)obstaclesFromNodeBounds:()GameplayKit;
+ (id)obstaclesFromNodePhysicsBodies:()GameplayKit;
+ (id)obstaclesFromSpriteTextures:()GameplayKit accuracy:;
@end

@implementation SKNode(GameplayKit)

+ (id)obstaclesFromSpriteTextures:()GameplayKit accuracy:
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a4;
  __p = 0;
  v49 = 0;
  v50 = 0;
  v6 = [v5 count];
  if (v6)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v7 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v9)
  {
    v10 = *v45;
    v41 = v8;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v42 = 0;
          v43 = 0;
          *&v14 = self;
          if ([v13 _pathFromTextureToPoints:&v43 outSize:&v42 accuracy:v14])
          {
            if (v42)
            {
              v15 = [GKPolygonObstacle obstacleWithPoints:v43 count:?];
              v16 = v15;
              if (v7 < v50)
              {
                *v7 = v15;
                v12 = v7 + 8;
              }

              else
              {
                v17 = __p;
                v18 = v7 - __p;
                v19 = (v7 - __p) >> 3;
                v20 = v19 + 1;
                if ((v19 + 1) >> 61)
                {
                  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
                }

                v21 = v50 - __p;
                if ((v50 - __p) >> 2 > v20)
                {
                  v20 = v21 >> 2;
                }

                if (v21 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                if (v20)
                {
                  if (!(v20 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v33 = (8 * v19);
                *v33 = v15;
                v12 = (v33 + 1);
                if (v17 == v7)
                {
                  v8 = v41;
                  __p = 0;
                  v50 = 0;
                  if (v17)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v22 = v18 - 8;
                  v23 = v17;
                  v24 = 0;
                  v25 = (v18 - 8) >= 0x28;
                  v8 = v41;
                  if (!v25)
                  {
                    goto LABEL_55;
                  }

                  if (v17 < (v22 & 0xFFFFFFFFFFFFFFF8) + 8)
                  {
                    v23 = v17;
                    v24 = 0;
                    if ((v17 + (v22 & 0xFFFFFFFFFFFFFFF8)) != -8)
                    {
                      goto LABEL_55;
                    }
                  }

                  v26 = (v22 >> 3) + 1;
                  v24 = (8 * (v26 & 0x3FFFFFFFFFFFFFFCLL));
                  v23 = (v24 + v17);
                  v27 = 16;
                  v28 = (v17 + 2);
                  v29 = v26 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v30 = *(v28 - 1);
                    v31 = *v28;
                    *(v28 - 1) = 0uLL;
                    *v28 = 0uLL;
                    *(v27 - 16) = v30;
                    *v27 = v31;
                    v27 += 32;
                    v28 += 2;
                    v29 -= 4;
                  }

                  while (v29);
                  if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
                  {
LABEL_55:
                    do
                    {
                      v32 = *v23;
                      *v23++ = 0;
                      *v24++ = v32;
                    }

                    while (v23 != v7);
                  }

                  do
                  {
                  }

                  while (v17 != v7);
                  v17 = __p;
                  __p = 0;
                  v50 = 0;
                  if (v17)
                  {
LABEL_38:
                    operator delete(v17);
                  }
                }
              }

              v49 = v12;

              v7 = v12;
            }

            free(v43);
            continue;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (!v9)
      {
        v34 = __p;
        goto LABEL_42;
      }
    }
  }

  v34 = 0;
LABEL_42:

  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:(v7 - v34) >> 3];
  v36 = __p;
  if (__p)
  {
    for (j = v49; j != v36; j -= 8)
    {
      v38 = *(j - 1);
    }

    operator delete(v36);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)obstaclesFromNodeBounds:()GameplayKit
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a3;
  __p = 0;
  v50 = 0;
  v51 = 0;
  v4 = [v3 count];
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v5 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v6)
  {
    v7 = *v46;
    v8 = 0x278A5B000uLL;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v45 + 1) + 8 * v9) globalBoundingVerts];
        *(&v11 + 1) = v10;
        *(&v13 + 1) = v12;
        v52[0] = v11;
        v52[1] = v13;
        v14 = [*(v8 + 3640) obstacleWithPoints:v52 count:4];
        v15 = v14;
        if (v5 < v51)
        {
          *v5 = v14;
          v5 += 8;
          goto LABEL_31;
        }

        v16 = v7;
        v17 = v8;
        v18 = __p;
        v19 = v5 - __p;
        v20 = (v5 - __p) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
        }

        v22 = v51 - __p;
        if ((v51 - __p) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (!(v21 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v34 = (8 * v20);
        *v34 = v14;
        v35 = (v34 + 1);
        if (v18 == v5)
        {
          v8 = v17;
          v7 = v16;
          __p = 0;
          v51 = 0;
          if (!v18)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v23 = v19 - 8;
          v24 = v18;
          v25 = 0;
          v26 = (v19 - 8) >= 0x28;
          v8 = v17;
          v7 = v16;
          if (!v26)
          {
            goto LABEL_52;
          }

          if (v18 < (v23 & 0xFFFFFFFFFFFFFFF8) + 8)
          {
            v24 = v18;
            v25 = 0;
            if ((v18 + (v23 & 0xFFFFFFFFFFFFFFF8)) != -8)
            {
              goto LABEL_52;
            }
          }

          v27 = (v23 >> 3) + 1;
          v25 = (8 * (v27 & 0x3FFFFFFFFFFFFFFCLL));
          v24 = (v25 + v18);
          v28 = 16;
          v29 = (v18 + 2);
          v30 = v27 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v31 = *(v29 - 1);
            v32 = *v29;
            *(v29 - 1) = 0uLL;
            *v29 = 0uLL;
            *(v28 - 16) = v31;
            *v28 = v32;
            v28 += 32;
            v29 += 2;
            v30 -= 4;
          }

          while (v30);
          if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_52:
            do
            {
              v33 = *v24;
              *v24++ = 0;
              *v25++ = v33;
            }

            while (v24 != v5);
          }

          do
          {
          }

          while (v18 != v5);
          v18 = __p;
          __p = 0;
          v51 = 0;
          if (!v18)
          {
            goto LABEL_30;
          }
        }

        operator delete(v18);
LABEL_30:
        v5 = v35;
LABEL_31:
        v50 = v5;

        ++v9;
      }

      while (v9 != v6);
      v36 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      v6 = v36;
      if (!v36)
      {
        v37 = __p;
        goto LABEL_39;
      }
    }
  }

  v37 = 0;
LABEL_39:

  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:(v5 - v37) >> 3];
  v39 = __p;
  if (__p)
  {
    for (i = v50; i != v39; i -= 8)
    {
      v41 = *(i - 1);
    }

    operator delete(v39);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)obstaclesFromNodePhysicsBodies:()GameplayKit
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  __p = 0;
  v47 = 0;
  v48 = 0;
  v4 = [v3 count];
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v5 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = *v43;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        physicsBody = [v10 physicsBody];
        v12 = physicsBody == 0;

        if (!v12)
        {
          v40 = 0;
          v41 = 0;
          if ([v10 _pathFromPhysicsBodyToPoints:&v41 outSize:&v40])
          {
            if (v40)
            {
              v13 = [GKPolygonObstacle obstacleWithPoints:v41 count:?];
              v14 = v13;
              if (v5 < v48)
              {
                *v5 = v13;
                v9 = v5 + 8;
              }

              else
              {
                v15 = __p;
                v16 = v5 - __p;
                v17 = (v5 - __p) >> 3;
                v18 = v17 + 1;
                if ((v17 + 1) >> 61)
                {
                  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
                }

                v19 = v48 - __p;
                if ((v48 - __p) >> 2 > v18)
                {
                  v18 = v19 >> 2;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  if (!(v20 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v21 = (8 * v17);
                *v21 = v13;
                v9 = (v21 + 1);
                if (v15 != v5)
                {
                  v22 = v16 - 8;
                  v23 = v15;
                  v24 = 0;
                  if ((v16 - 8) < 0x28)
                  {
                    goto LABEL_54;
                  }

                  if (v15 < (v22 & 0xFFFFFFFFFFFFFFF8) + 8)
                  {
                    v23 = v15;
                    v24 = 0;
                    if ((v15 + (v22 & 0xFFFFFFFFFFFFFFF8)) != -8)
                    {
                      goto LABEL_54;
                    }
                  }

                  v25 = (v22 >> 3) + 1;
                  v24 = (8 * (v25 & 0x3FFFFFFFFFFFFFFCLL));
                  v23 = (v24 + v15);
                  v26 = 16;
                  v27 = (v15 + 2);
                  v28 = v25 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v29 = *(v27 - 1);
                    v30 = *v27;
                    *(v27 - 1) = 0uLL;
                    *v27 = 0uLL;
                    *(v26 - 16) = v29;
                    *v26 = v30;
                    v26 += 32;
                    v27 += 2;
                    v28 -= 4;
                  }

                  while (v28);
                  if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
                  {
LABEL_54:
                    do
                    {
                      v31 = *v23;
                      *v23++ = 0;
                      *v24++ = v31;
                    }

                    while (v23 != v5);
                  }

                  do
                  {
                  }

                  while (v15 != v5);
                  v15 = __p;
                }

                __p = 0;
                v48 = 0;
                if (v15)
                {
                  operator delete(v15);
                }
              }

              v47 = v9;

              v5 = v9;
            }

            free(v41);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v6);
    v32 = __p;
  }

  else
  {
    v32 = 0;
  }

  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:(v5 - v32) >> 3];
  v34 = __p;
  if (__p)
  {
    for (j = v47; j != v34; j -= 8)
    {
      v36 = *(j - 1);
    }

    operator delete(v34);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v33;
}

@end