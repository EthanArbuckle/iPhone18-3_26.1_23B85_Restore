@interface MPSCPURayIntersector
- (MPSCPURayIntersector)init;
- (void)getIntersectionsOfType:(unint64_t)type rays:(void *)rays intersections:(void *)intersections rayCount:(unint64_t)count accelerationStructure:(id)structure;
@end

@implementation MPSCPURayIntersector

- (MPSCPURayIntersector)init
{
  v3.receiver = self;
  v3.super_class = MPSCPURayIntersector;
  result = [(MPSCPURayIntersector *)&v3 init];
  if (result)
  {
    result->_rayDataType = 0;
    result->_rayStride = 0;
    *&result->_intersectionDataType = xmmword_239E26FB0;
  }

  return result;
}

- (void)getIntersectionsOfType:(unint64_t)type rays:(void *)rays intersections:(void *)intersections rayCount:(unint64_t)count accelerationStructure:(id)structure
{
  rayStride = self->_rayStride;
  if (!rayStride)
  {
    rayStride = MPSRayDataTypeStride(self->_rayDataType);
  }

  intersectionStride = self->_intersectionStride;
  if (!intersectionStride)
  {
    intersectionStride = MPSIntersectionDataTypeStride(self->_intersectionDataType);
  }

  v13 = objc_msgSend_bvh(structure, a2, type, rays, intersections, rays);
  if (count)
  {
    v20 = v13;
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = 0;
      rayDataType = self->_rayDataType;
      v25 = 0;
      if (rayDataType > 1)
      {
        if (rayDataType == 2)
        {
          v34 = (v64 + v21 * rayStride);
          LODWORD(v19) = *v34;
          v30 = v34[1];
          v29 = v34[2];
          v23 = v34[3];
          LODWORD(v18) = v34[4];
          v28 = v34[5];
          v27 = v34[6];
          v26 = v34[7];
        }

        else
        {
          if (rayDataType == 3)
          {
            v32 = (v64 + v21 * rayStride);
            LODWORD(v19) = *v32;
            v30 = v32[1];
            v29 = v32[2];
            LODWORD(v18) = v32[3];
            v28 = v32[4];
            v27 = v32[5];
LABEL_15:
            v23 = 0xFFFFFFFFLL;
            v26 = 2139095040;
            goto LABEL_18;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          *&v18 = 0;
          v29 = 0;
          v30 = 0;
          *&v19 = 0;
        }
      }

      else
      {
        if (!rayDataType)
        {
          v33 = (v64 + v21 * rayStride);
          v19 = *v33;
          v18 = v33[1];
          v30 = HIDWORD(*v33);
          v29 = *(v33 + 1);
          v28 = HIDWORD(*(v33 + 2));
          v27 = *(v33 + 3);
          goto LABEL_15;
        }

        v26 = 0;
        v27 = 0;
        v28 = 0;
        *&v18 = 0;
        v29 = 0;
        v30 = 0;
        *&v19 = 0;
        if (rayDataType == 1)
        {
          v31 = (v64 + v21 * rayStride);
          LODWORD(v19) = *v31;
          v30 = v31[1];
          v29 = v31[2];
          v25 = v31[3];
          LODWORD(v18) = v31[4];
          v28 = v31[5];
          v27 = v31[6];
          v26 = v31[7];
          v23 = 0xFFFFFFFFLL;
        }
      }

LABEL_18:
      v66 = *&v19;
      v67 = *&v18;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      if (objc_msgSend_instancing(structure, v14, v15, v16, v17))
      {
        if (objc_msgSend_identityTransforms(structure, v35, v36, v37, v38))
        {
          v45.i32[0] = v30;
          v46.i32[0] = v29;
          LODWORD(v47) = v28;
          LODWORD(v48) = v27;
          v49.i32[0] = v25;
          v50.i32[0] = v26;
          if (type)
          {
            sub_239DE9BC4(*&v66, v45, v46, v67, v47, v48, v49, *v50.i64, v23, v20, &v70 + 1, &v70, &v69 + 1, &v69, &v68 + 1, &v68);
          }

          else
          {
            sub_239DE9618(*&v66, v45, v46, v67, v47, v48, v49, v50, v23, v20, &v70 + 1, &v70, &v69 + 1, &v69, &v68 + 1, &v68);
          }
        }

        else
        {
          v45.i32[0] = v30;
          v46.i32[0] = v29;
          LODWORD(v47) = v28;
          LODWORD(v48) = v27;
          v49.i32[0] = v25;
          v50.i32[0] = v26;
          if (type)
          {
            sub_239DE9090(*&v66, v45, v46, v67, v47, v48, v49, *v50.i64, v23, v20, &v70 + 1, &v70, &v69 + 1, &v69, &v68 + 1, &v68);
          }

          else
          {
            sub_239DE88C4(v66, v45, v46, v67, v47, v48, v49, *v50.i64, v23, v20, &v70 + 1, &v70, &v69 + 1, &v69, &v68 + 1, &v68);
          }
        }
      }

      else
      {
        v39.i32[0] = v30;
        v40.i32[0] = v29;
        LODWORD(v41) = v28;
        LODWORD(v42) = v27;
        v43.i32[0] = v25;
        v44.i32[0] = v26;
        if (type)
        {
          sub_239DE8554(*&v66, v39, v40, v67, v41, v42, v43, *v44.i64, v23, v20, &v70 + 1, &v70, &v69 + 1, &v69, &v68 + 1, &v68);
        }

        else
        {
          sub_239DE7FD0(*&v66, v39, v40, v67, v41, v42, v43, v44, v23, v20, &v70 + 1, &v70, &v69 + 1, &v69, &v68 + 1, &v68);
        }
      }

      intersectionDataType = self->_intersectionDataType;
      if (intersectionDataType <= 3)
      {
        if (intersectionDataType <= 1)
        {
          if (intersectionDataType)
          {
            if (intersectionDataType == 1)
            {
              v54 = intersections + v21 * intersectionStride;
              *v54 = HIDWORD(v70);
              if (!type)
              {
                v54[1] = v70;
              }
            }
          }

          else
          {
            *(intersections + v21 * intersectionStride) = HIDWORD(v70);
          }

          goto LABEL_59;
        }

        if (intersectionDataType == 2)
        {
          v58 = intersections + v21 * intersectionStride;
          *v58 = HIDWORD(v70);
          if (!type)
          {
            *(v58 + 1) = v70;
            *&v18 = __PAIR64__(HIDWORD(v68), v69);
            *(v58 + 1) = __PAIR64__(HIDWORD(v68), v69);
          }

          goto LABEL_59;
        }

        v55 = intersections + v21 * intersectionStride;
        *v55 = HIDWORD(v70);
        if (!type)
        {
          v56 = v70;
          v57 = v68;
LABEL_47:
          v55[1] = v56;
          v55[2] = v57;
        }
      }

      else if (intersectionDataType <= 5)
      {
        if (intersectionDataType == 4)
        {
          v52 = intersections + v21 * intersectionStride;
          *v52 = HIDWORD(v70);
          if (!type)
          {
            v59 = v70;
            v60 = v68;
            goto LABEL_55;
          }
        }

        else
        {
          v55 = intersections + v21 * intersectionStride;
          *v55 = HIDWORD(v70);
          if (!type)
          {
            v57 = HIDWORD(v69);
            v56 = v70;
            goto LABEL_47;
          }
        }
      }

      else
      {
        switch(intersectionDataType)
        {
          case 6:
            v52 = intersections + v21 * intersectionStride;
            *v52 = HIDWORD(v70);
            if (!type)
            {
              v60 = HIDWORD(v69);
              v59 = v70;
LABEL_55:
              *(v52 + 1) = v59;
              *(v52 + 2) = v60;
              goto LABEL_56;
            }

            break;
          case 7:
            v61 = intersections + v21 * intersectionStride;
            *v61 = HIDWORD(v70);
            if (!type)
            {
              v62 = HIDWORD(v69);
              v61[1] = v70;
              v61[2] = v62;
              v61[3] = v68;
            }

            break;
          case 8:
            v52 = intersections + v21 * intersectionStride;
            *v52 = HIDWORD(v70);
            if (!type)
            {
              v53 = HIDWORD(v69);
              *(v52 + 1) = v70;
              *(v52 + 2) = v53;
              *(v52 + 3) = v68;
LABEL_56:
              *&v18 = __PAIR64__(HIDWORD(v68), v69);
              *(v52 + 2) = __PAIR64__(HIDWORD(v68), v69);
            }

            break;
        }
      }

LABEL_59:
      v21 = v22++;
    }

    while (v21 < count);
  }
}

@end