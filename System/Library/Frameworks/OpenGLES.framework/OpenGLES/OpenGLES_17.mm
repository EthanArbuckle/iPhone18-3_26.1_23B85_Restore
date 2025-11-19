uint64_t serialize_GLPInterfaceBlockObject(void *a1, unint64_t a2)
{
  result = serialize_pointer(a1, a2);
  if (!result)
  {
    return result;
  }

  VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(a2);
  serialize_GLPString(a1, *a2, *(a2 + 8));
  v6 = *(a2 + 32);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  ++*(a1 + 9);
  if (*(a2 + 32))
  {
    serialize_GLPString(a1, *(a2 + 16), *(a2 + 24));
  }

  v14 = *(a2 + 40);
  v15 = glp_serialized_integer64_control(v14);
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  v18 = v17 + 1;
  if (v17 + 1 <= v16)
  {
    v21 = a1[5];
    v22 = *(a1 + 9);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v19 = 2 * v16;
    if (v19 <= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
    memcpy(v21, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v20;
    a1[5] = v21;
    v22 = *(a1 + 9);
  }

  memmove(&v21[v17 + 1], &v21[v17], (v22 - v17));
  *(a1[5] + v17) = v15;
  v23 = *(a1 + 9);
  v24 = v23 + 1;
  *(a1 + 9) = v23 + 1;
  if ((v15 & 0x80000000) != 0)
  {
    v25 = (v15 >> 1) & 7;
    if (v25 > 3)
    {
      if (((v15 >> 1) & 7) <= 5)
      {
        v32 = v23 + 5;
        if (v25 == 4)
        {
          v33 = *(a1 + 8);
          if (v32 <= v33)
          {
            v36 = a1[5];
            v37 = v24;
          }

          else
          {
            if (v33 <= 1)
            {
              v33 = 1;
            }

            v34 = 2 * v33;
            if (v34 <= v32)
            {
              v35 = v32;
            }

            else
            {
              v35 = v34;
            }

            v36 = (a1[1])(*a1, v35, "Vector Storage (uint8_t, growth)");
            memcpy(v36, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v35;
            a1[5] = v36;
            v37 = *(a1 + 9);
          }

          memmove(&v36[v24 + 1], &v36[v24], v37 - v24);
          *(a1[5] + v24) = v14;
          v76 = *(a1 + 8);
          v75 = *(a1 + 9);
          v24 = v75 + 4;
          *(a1 + 9) = v75 + 4;
          v77 = v75 + 5;
          if (v77 <= v76)
          {
            v80 = a1[5];
            v81 = v24;
          }

          else
          {
            if (v76 <= 1)
            {
              v76 = 1;
            }

            v78 = 2 * v76;
            if (v78 <= v77)
            {
              v79 = v77;
            }

            else
            {
              v79 = v78;
            }

            v80 = (a1[1])(*a1, v79, "Vector Storage (uint8_t, growth)");
            memcpy(v80, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v79;
            a1[5] = v80;
            v81 = *(a1 + 9);
          }

          v14 >>= 32;
          v74 = v81 - v24;
          v73 = &v80[v24];
          goto LABEL_121;
        }

        v56 = *(a1 + 8);
        if (v32 <= v56)
        {
          v59 = a1[5];
          v60 = v24;
        }

        else
        {
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = 2 * v56;
          if (v57 <= v32)
          {
            v58 = v32;
          }

          else
          {
            v58 = v57;
          }

          v59 = (a1[1])(*a1, v58, "Vector Storage (uint8_t, growth)");
          memcpy(v59, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v58;
          a1[5] = v59;
          v60 = *(a1 + 9);
        }

        memmove(&v59[v24 + 1], &v59[v24], v60 - v24);
        *(a1[5] + v24) = v14;
        v94 = *(a1 + 8);
        v93 = *(a1 + 9);
        v24 = v93 + 4;
        *(a1 + 9) = v93 + 4;
        v95 = v93 + 6;
        if (v95 <= v94)
        {
          v98 = a1[5];
          v99 = v24;
        }

        else
        {
          if (v94 <= 1)
          {
            v94 = 1;
          }

          v96 = 2 * v94;
          if (v96 <= v95)
          {
            v97 = v95;
          }

          else
          {
            v97 = v96;
          }

          v98 = (a1[1])(*a1, v97, "Vector Storage (uint8_t, growth)");
          memcpy(v98, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v97;
          a1[5] = v98;
          v99 = *(a1 + 9);
        }

        v14 >>= 32;
        v92 = v99 - v24;
        v91 = &v98[v24];
LABEL_127:
        memmove(v91 + 1, v91, v92);
        *(a1[5] + v24) = v14;
        v100 = 2;
        goto LABEL_128;
      }

      if (v25 != 6)
      {
        v67 = v23 + 9;
        v68 = *(a1 + 8);
        if (v67 <= v68)
        {
          v71 = a1[5];
          v72 = v24;
        }

        else
        {
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = 2 * v68;
          if (v69 <= v67)
          {
            v70 = v67;
          }

          else
          {
            v70 = v69;
          }

          v71 = (a1[1])(*a1, v70, "Vector Storage (uint8_t, growth)");
          memcpy(v71, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v70;
          a1[5] = v71;
          v72 = *(a1 + 9);
        }

        memmove(&v71[v24 + 1], &v71[v24], v72 - v24);
        *(a1[5] + v24) = v14;
        v100 = 8;
        goto LABEL_128;
      }

      v44 = v23 + 5;
      v45 = *(a1 + 8);
      if (v44 <= v45)
      {
        v48 = a1[5];
        v49 = v24;
      }

      else
      {
        if (v45 <= 1)
        {
          v45 = 1;
        }

        v46 = 2 * v45;
        if (v46 <= v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = v46;
        }

        v48 = (a1[1])(*a1, v47, "Vector Storage (uint8_t, growth)");
        memcpy(v48, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v47;
        a1[5] = v48;
        v49 = *(a1 + 9);
      }

      memmove(&v48[v24 + 1], &v48[v24], v49 - v24);
      *(a1[5] + v24) = v14;
      v84 = *(a1 + 8);
      v83 = *(a1 + 9);
      v85 = v83 + 4;
      *(a1 + 9) = v83 + 4;
      v86 = v83 + 7;
      if (v86 <= v84)
      {
        v89 = a1[5];
        v90 = v85;
      }

      else
      {
        if (v84 <= 1)
        {
          v84 = 1;
        }

        v87 = 2 * v84;
        if (v87 <= v86)
        {
          v88 = v86;
        }

        else
        {
          v88 = v87;
        }

        v89 = (a1[1])(*a1, v88, "Vector Storage (uint8_t, growth)");
        memcpy(v89, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v88;
        a1[5] = v89;
        v90 = *(a1 + 9);
      }

      memmove(&v89[v85 + 1], &v89[v85], v90 - v85);
      v101 = a1[5] + v85;
      *(v101 + 2) = BYTE6(v14);
      *v101 = WORD2(v14);
    }

    else
    {
      if (((v15 >> 1) & 7) <= 1)
      {
        if (!v25)
        {
          v26 = v23 + 2;
          v27 = *(a1 + 8);
          if (v26 <= v27)
          {
            v30 = a1[5];
            v31 = v24;
          }

          else
          {
            if (v27 <= 1)
            {
              v27 = 1;
            }

            v28 = 2 * v27;
            if (v28 <= v26)
            {
              v29 = v26;
            }

            else
            {
              v29 = v28;
            }

            v30 = (a1[1])(*a1, v29, "Vector Storage (uint8_t, growth)");
            memcpy(v30, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v29;
            a1[5] = v30;
            v31 = *(a1 + 9);
          }

          v73 = &v30[v24];
          v74 = v31 - v24;
LABEL_121:
          memmove(v73 + 1, v73, v74);
          *(a1[5] + v24) = v14;
          v100 = 1;
LABEL_128:
          *(a1 + 9) += v100;
          goto LABEL_129;
        }

        v50 = v23 + 3;
        v51 = *(a1 + 8);
        if (v50 <= v51)
        {
          v54 = a1[5];
          v55 = v24;
        }

        else
        {
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = 2 * v51;
          if (v52 <= v50)
          {
            v53 = v50;
          }

          else
          {
            v53 = v52;
          }

          v54 = (a1[1])(*a1, v53, "Vector Storage (uint8_t, growth)");
          memcpy(v54, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v53;
          a1[5] = v54;
          v55 = *(a1 + 9);
        }

        v91 = &v54[v24];
        v92 = v55 - v24;
        goto LABEL_127;
      }

      if (v25 != 2)
      {
        v61 = v23 + 5;
        v62 = *(a1 + 8);
        if (v61 <= v62)
        {
          v65 = a1[5];
          v66 = v24;
        }

        else
        {
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = 2 * v62;
          if (v63 <= v61)
          {
            v64 = v61;
          }

          else
          {
            v64 = v63;
          }

          v65 = (a1[1])(*a1, v64, "Vector Storage (uint8_t, growth)");
          memcpy(v65, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v64;
          a1[5] = v65;
          v66 = *(a1 + 9);
        }

        memmove(&v65[v24 + 1], &v65[v24], v66 - v24);
        *(a1[5] + v24) = v14;
        v100 = 4;
        goto LABEL_128;
      }

      v38 = v23 + 4;
      v39 = *(a1 + 8);
      if (v38 <= v39)
      {
        v42 = a1[5];
        v43 = v24;
      }

      else
      {
        if (v39 <= 1)
        {
          v39 = 1;
        }

        v40 = 2 * v39;
        if (v40 <= v38)
        {
          v41 = v38;
        }

        else
        {
          v41 = v40;
        }

        v42 = (a1[1])(*a1, v41, "Vector Storage (uint8_t, growth)");
        memcpy(v42, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v41;
        a1[5] = v42;
        v43 = *(a1 + 9);
      }

      memmove(&v42[v24 + 1], &v42[v24], v43 - v24);
      v82 = a1[5] + v24;
      *(v82 + 2) = BYTE2(v14);
      *v82 = v14;
    }

    v100 = 3;
    goto LABEL_128;
  }

LABEL_129:
  serialize_GLPLayoutObject(a1, *(a2 + 56));
  serialize_GLPType(a1, *(a2 + 64));
  if (VariableObjectCount)
  {
    v102 = 0;
    v103 = 8 * VariableObjectCount;
    do
    {
      serialize_GLPVariableObject(a1, *(*(a2 + 72) + v102));
      v102 += 8;
    }

    while (v103 != v102);
  }

  v104 = *(a2 + 80);

  return serialize_GLPBufferObject(a1, v104);
}

uint64_t serialize_GLPBufferObject(void *a1, unint64_t a2)
{
  result = serialize_pointer(a1, a2);
  if (!result)
  {
    return result;
  }

  serialize_GLPType(a1, *a2);
  v5 = *(a2 + 8);
  v6 = glp_serialized_integer32_control(v5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v14 = *(a1 + 9);
  v15 = v14 + 1;
  *(a1 + 9) = v14 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v16 = (v6 >> 1) & 7;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v35 = v14 + 4;
        v36 = *(a1 + 8);
        if (v35 <= v36)
        {
          v39 = a1[5];
          v40 = v15;
        }

        else
        {
          if (v36 <= 1)
          {
            v36 = 1;
          }

          v37 = 2 * v36;
          if (v37 <= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          v39 = (a1[1])(*a1, v38, "Vector Storage (uint8_t, growth)");
          memcpy(v39, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v38;
          a1[5] = v39;
          v40 = *(a1 + 9);
        }

        memmove(&v39[v15 + 1], &v39[v15], v40 - v15);
        v42 = a1[5] + v15;
        *(v42 + 2) = BYTE2(v5);
        *v42 = v5;
        v41 = 3;
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_53;
        }

        v23 = v14 + 5;
        v24 = *(a1 + 8);
        if (v23 <= v24)
        {
          v27 = a1[5];
          v28 = v15;
        }

        else
        {
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = 2 * v24;
          if (v25 <= v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v25;
          }

          v27 = (a1[1])(*a1, v26, "Vector Storage (uint8_t, growth)");
          memcpy(v27, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v26;
          a1[5] = v27;
          v28 = *(a1 + 9);
        }

        memmove(&v27[v15 + 1], &v27[v15], v28 - v15);
        *(a1[5] + v15) = v5;
        v41 = 4;
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_53;
      }

      v17 = v14 + 3;
      v18 = *(a1 + 8);
      if (v17 <= v18)
      {
        v21 = a1[5];
        v22 = v15;
      }

      else
      {
        if (v18 <= 1)
        {
          v18 = 1;
        }

        v19 = 2 * v18;
        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
        memcpy(v21, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v20;
        a1[5] = v21;
        v22 = *(a1 + 9);
      }

      memmove(&v21[v15 + 1], &v21[v15], v22 - v15);
      *(a1[5] + v15) = v5;
      v41 = 2;
    }

    else
    {
      v29 = v14 + 2;
      v30 = *(a1 + 8);
      if (v29 <= v30)
      {
        v33 = a1[5];
        v34 = v15;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (a1[1])(*a1, v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v32;
        a1[5] = v33;
        v34 = *(a1 + 9);
      }

      memmove(&v33[v15 + 1], &v33[v15], v34 - v15);
      *(a1[5] + v15) = v5;
      v41 = 1;
    }

    *(a1 + 9) += v41;
  }

LABEL_53:
  v43 = *(a2 + 12);
  v44 = glp_serialized_integer32_control(v43);
  v45 = *(a1 + 8);
  v46 = *(a1 + 9);
  v47 = v46 + 1;
  if (v46 + 1 <= v45)
  {
    v50 = a1[5];
    v51 = *(a1 + 9);
  }

  else
  {
    if (v45 <= 1)
    {
      v45 = 1;
    }

    v48 = 2 * v45;
    if (v48 <= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    v50 = (a1[1])(*a1, v49, "Vector Storage (uint8_t, growth)");
    memcpy(v50, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v49;
    a1[5] = v50;
    v51 = *(a1 + 9);
  }

  result = memmove(&v50[v46 + 1], &v50[v46], (v51 - v46));
  *(a1[5] + v46) = v44;
  v52 = *(a1 + 9);
  v53 = v52 + 1;
  *(a1 + 9) = v52 + 1;
  if ((v44 & 0x80000000) != 0)
  {
    v54 = (v44 >> 1) & 7;
    if (v54 > 1)
    {
      if (v54 == 2)
      {
        v73 = v52 + 4;
        v74 = *(a1 + 8);
        if (v73 <= v74)
        {
          v77 = a1[5];
          v78 = v53;
        }

        else
        {
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = 2 * v74;
          if (v75 <= v73)
          {
            v76 = v73;
          }

          else
          {
            v76 = v75;
          }

          v77 = (a1[1])(*a1, v76, "Vector Storage (uint8_t, growth)");
          memcpy(v77, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v76;
          a1[5] = v77;
          v78 = *(a1 + 9);
        }

        result = memmove(&v77[v53 + 1], &v77[v53], v78 - v53);
        v80 = a1[5] + v53;
        *(v80 + 2) = BYTE2(v43);
        *v80 = v43;
        v79 = 3;
      }

      else
      {
        if (v54 != 3)
        {
          return result;
        }

        v61 = v52 + 5;
        v62 = *(a1 + 8);
        if (v61 <= v62)
        {
          v65 = a1[5];
          v66 = v53;
        }

        else
        {
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = 2 * v62;
          if (v63 <= v61)
          {
            v64 = v61;
          }

          else
          {
            v64 = v63;
          }

          v65 = (a1[1])(*a1, v64, "Vector Storage (uint8_t, growth)");
          memcpy(v65, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v64;
          a1[5] = v65;
          v66 = *(a1 + 9);
        }

        result = memmove(&v65[v53 + 1], &v65[v53], v66 - v53);
        *(a1[5] + v53) = v43;
        v79 = 4;
      }
    }

    else if (v54)
    {
      if (v54 != 1)
      {
        return result;
      }

      v55 = v52 + 3;
      v56 = *(a1 + 8);
      if (v55 <= v56)
      {
        v59 = a1[5];
        v60 = v53;
      }

      else
      {
        if (v56 <= 1)
        {
          v56 = 1;
        }

        v57 = 2 * v56;
        if (v57 <= v55)
        {
          v58 = v55;
        }

        else
        {
          v58 = v57;
        }

        v59 = (a1[1])(*a1, v58, "Vector Storage (uint8_t, growth)");
        memcpy(v59, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v58;
        a1[5] = v59;
        v60 = *(a1 + 9);
      }

      result = memmove(&v59[v53 + 1], &v59[v53], v60 - v53);
      *(a1[5] + v53) = v43;
      v79 = 2;
    }

    else
    {
      v67 = v52 + 2;
      v68 = *(a1 + 8);
      if (v67 <= v68)
      {
        v71 = a1[5];
        v72 = v53;
      }

      else
      {
        if (v68 <= 1)
        {
          v68 = 1;
        }

        v69 = 2 * v68;
        if (v69 <= v67)
        {
          v70 = v67;
        }

        else
        {
          v70 = v69;
        }

        v71 = (a1[1])(*a1, v70, "Vector Storage (uint8_t, growth)");
        memcpy(v71, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v70;
        a1[5] = v71;
        v72 = *(a1 + 9);
      }

      result = memmove(&v71[v53 + 1], &v71[v53], v72 - v53);
      *(a1[5] + v53) = v43;
      v79 = 1;
    }

    *(a1 + 9) += v79;
  }

  return result;
}

void *serializeTypeConversionFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpTypeConversionNodeGetToType(a2);
  serialize_GLPType(a1, v4);
  v5 = glpTypeConversionNodeGetToPrecision(a2);
  v6 = glp_serialized_integer64_control(v5);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 3)
    {
      if (((v6 >> 1) & 7) <= 5)
      {
        v24 = v15 + 5;
        if (v17 == 4)
        {
          v25 = *(a1 + 8);
          if (v24 <= v25)
          {
            v28 = a1[5];
            v29 = v16;
          }

          else
          {
            if (v25 <= 1)
            {
              v25 = 1;
            }

            v26 = 2 * v25;
            if (v26 <= v24)
            {
              v27 = v24;
            }

            else
            {
              v27 = v26;
            }

            v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
            memcpy(v28, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v27;
            a1[5] = v28;
            v29 = *(a1 + 9);
          }

          memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
          *(a1[5] + v16) = v5;
          v68 = *(a1 + 8);
          v67 = *(a1 + 9);
          v16 = v67 + 4;
          *(a1 + 9) = v67 + 4;
          v69 = v67 + 5;
          if (v69 <= v68)
          {
            v72 = a1[5];
            v73 = v16;
          }

          else
          {
            if (v68 <= 1)
            {
              v68 = 1;
            }

            v70 = 2 * v68;
            if (v70 <= v69)
            {
              v71 = v69;
            }

            else
            {
              v71 = v70;
            }

            v72 = (a1[1])(*a1, v71, "Vector Storage (uint8_t, growth)");
            memcpy(v72, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v71;
            a1[5] = v72;
            v73 = *(a1 + 9);
          }

          v5 >>= 32;
          v66 = v73 - v16;
          v65 = &v72[v16];
          goto LABEL_109;
        }

        v48 = *(a1 + 8);
        if (v24 <= v48)
        {
          v51 = a1[5];
          v52 = v16;
        }

        else
        {
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = 2 * v48;
          if (v49 <= v24)
          {
            v50 = v24;
          }

          else
          {
            v50 = v49;
          }

          v51 = (a1[1])(*a1, v50, "Vector Storage (uint8_t, growth)");
          memcpy(v51, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v50;
          a1[5] = v51;
          v52 = *(a1 + 9);
        }

        memmove(&v51[v16 + 1], &v51[v16], v52 - v16);
        *(a1[5] + v16) = v5;
        v86 = *(a1 + 8);
        v85 = *(a1 + 9);
        v16 = v85 + 4;
        *(a1 + 9) = v85 + 4;
        v87 = v85 + 6;
        if (v87 <= v86)
        {
          v90 = a1[5];
          v91 = v16;
        }

        else
        {
          if (v86 <= 1)
          {
            v86 = 1;
          }

          v88 = 2 * v86;
          if (v88 <= v87)
          {
            v89 = v87;
          }

          else
          {
            v89 = v88;
          }

          v90 = (a1[1])(*a1, v89, "Vector Storage (uint8_t, growth)");
          memcpy(v90, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v89;
          a1[5] = v90;
          v91 = *(a1 + 9);
        }

        v5 >>= 32;
        v84 = v91 - v16;
        v83 = &v90[v16];
LABEL_115:
        result = memmove(v83 + 1, v83, v84);
        *(a1[5] + v16) = v5;
        v92 = 2;
        goto LABEL_116;
      }

      if (v17 != 6)
      {
        v59 = v15 + 9;
        v60 = *(a1 + 8);
        if (v59 <= v60)
        {
          v63 = a1[5];
          v64 = v16;
        }

        else
        {
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = 2 * v60;
          if (v61 <= v59)
          {
            v62 = v59;
          }

          else
          {
            v62 = v61;
          }

          v63 = (a1[1])(*a1, v62, "Vector Storage (uint8_t, growth)");
          memcpy(v63, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v62;
          a1[5] = v63;
          v64 = *(a1 + 9);
        }

        result = memmove(&v63[v16 + 1], &v63[v16], v64 - v16);
        *(a1[5] + v16) = v5;
        v92 = 8;
        goto LABEL_116;
      }

      v36 = v15 + 5;
      v37 = *(a1 + 8);
      if (v36 <= v37)
      {
        v40 = a1[5];
        v41 = v16;
      }

      else
      {
        if (v37 <= 1)
        {
          v37 = 1;
        }

        v38 = 2 * v37;
        if (v38 <= v36)
        {
          v39 = v36;
        }

        else
        {
          v39 = v38;
        }

        v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
        memcpy(v40, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v39;
        a1[5] = v40;
        v41 = *(a1 + 9);
      }

      memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
      *(a1[5] + v16) = v5;
      v76 = *(a1 + 8);
      v75 = *(a1 + 9);
      v77 = v75 + 4;
      *(a1 + 9) = v75 + 4;
      v78 = v75 + 7;
      if (v78 <= v76)
      {
        v81 = a1[5];
        v82 = v77;
      }

      else
      {
        if (v76 <= 1)
        {
          v76 = 1;
        }

        v79 = 2 * v76;
        if (v79 <= v78)
        {
          v80 = v78;
        }

        else
        {
          v80 = v79;
        }

        v81 = (a1[1])(*a1, v80, "Vector Storage (uint8_t, growth)");
        memcpy(v81, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v80;
        a1[5] = v81;
        v82 = *(a1 + 9);
      }

      result = memmove(&v81[v77 + 1], &v81[v77], v82 - v77);
      v93 = a1[5] + v77;
      *(v93 + 2) = BYTE6(v5);
      *v93 = WORD2(v5);
    }

    else
    {
      if (((v6 >> 1) & 7) <= 1)
      {
        if (!v17)
        {
          v18 = v15 + 2;
          v19 = *(a1 + 8);
          if (v18 <= v19)
          {
            v22 = a1[5];
            v23 = v16;
          }

          else
          {
            if (v19 <= 1)
            {
              v19 = 1;
            }

            v20 = 2 * v19;
            if (v20 <= v18)
            {
              v21 = v18;
            }

            else
            {
              v21 = v20;
            }

            v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
            memcpy(v22, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v21;
            a1[5] = v22;
            v23 = *(a1 + 9);
          }

          v65 = &v22[v16];
          v66 = v23 - v16;
LABEL_109:
          result = memmove(v65 + 1, v65, v66);
          *(a1[5] + v16) = v5;
          v92 = 1;
LABEL_116:
          *(a1 + 9) += v92;
          return result;
        }

        v42 = v15 + 3;
        v43 = *(a1 + 8);
        if (v42 <= v43)
        {
          v46 = a1[5];
          v47 = v16;
        }

        else
        {
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v44 = 2 * v43;
          if (v44 <= v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = v44;
          }

          v46 = (a1[1])(*a1, v45, "Vector Storage (uint8_t, growth)");
          memcpy(v46, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v45;
          a1[5] = v46;
          v47 = *(a1 + 9);
        }

        v83 = &v46[v16];
        v84 = v47 - v16;
        goto LABEL_115;
      }

      if (v17 != 2)
      {
        v53 = v15 + 5;
        v54 = *(a1 + 8);
        if (v53 <= v54)
        {
          v57 = a1[5];
          v58 = v16;
        }

        else
        {
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = 2 * v54;
          if (v55 <= v53)
          {
            v56 = v53;
          }

          else
          {
            v56 = v55;
          }

          v57 = (a1[1])(*a1, v56, "Vector Storage (uint8_t, growth)");
          memcpy(v57, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v56;
          a1[5] = v57;
          v58 = *(a1 + 9);
        }

        result = memmove(&v57[v16 + 1], &v57[v16], v58 - v16);
        *(a1[5] + v16) = v5;
        v92 = 4;
        goto LABEL_116;
      }

      v30 = v15 + 4;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      v74 = a1[5] + v16;
      *(v74 + 2) = BYTE2(v5);
      *v74 = v5;
    }

    v92 = 3;
    goto LABEL_116;
  }

  return result;
}

uint64_t serializeVariableIdentifierFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Name = glpVariableIdentifierNodeGetName(a2);

  return serialize_GLPString(a1, Name, v4);
}

uint64_t serializeTypeIdentifierFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Name = glpTypeIdentifierNodeGetName(a2);

  return serialize_GLPString(a1, Name, v4);
}

uint64_t serializeConstantFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Type = glpConstantNodeGetType(a2);
  serialize_GLPType(a1, Type);
  Value = glpConstantNodeGetValue(a2);
  v6 = glpConstantNodeGetType(a2);

  return real_serialize_GLPValue(a1, Value, v6);
}

uint64_t serializeFieldAccessFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Field = glpFieldAccessNodeGetField(a2);

  return serialize_GLPString(a1, Field, v4);
}

uint64_t serializeFunctionCallFields(void *a1, uint64_t a2)
{
  serializeCallFields(a1, a2);
  v4 = glpFunctionCallNodeGetName(a2);
  serialize_GLPString(a1, v4, v5);
  v6 = glpFunctionCallNodeGetExtra(a2);

  return serialize_GLPFunctionObject(a1, v6);
}

uint64_t serializeSubroutineArrayCallFields(void *a1, uint64_t a2)
{
  serializeCallFields(a1, a2);
  v5 = glpSubroutineArrayCallNodeGetName(a2);

  return serialize_GLPString(a1, v5, v4);
}

uint64_t serializeMethodCallFields(void *a1, uint64_t a2)
{
  serializeCallFields(a1, a2);
  v5 = glpMethodCallNodeGetName(a2);

  return serialize_GLPString(a1, v5, v4);
}

void *serializeEqualFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpEqualNodeGetIsFromSource(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  result = memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = v4;
  ++*(a1 + 9);
  return result;
}

void *serializeNotEqualFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpNotEqualNodeGetIsFromSource(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  result = memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = v4;
  ++*(a1 + 9);
  return result;
}

void *serializeAssignFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpAssignNodeGetIsFromSource(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  result = memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = v4;
  ++*(a1 + 9);
  return result;
}

void serializeOpAssignFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  glpOpAssignNodeGetDesugar(a2);
  abort();
}

uint64_t serializeReadInputFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Extra = glpReadInputNodeGetExtra(a2);

  return serialize_GLPVariableObject(a1, Extra);
}

uint64_t serializeWriteOutputFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpWriteOutputNodeGetExtra(a2);

  return serialize_GLPVariableObject(a1, v4);
}

void *serializeCommaExprFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpCommaExprNodeGetIsFromSource(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = v4;
  ++*(a1 + 9);
  ExprCount = glpCommaExprNodeGetExprCount(a2);
  v13 = ExprCount;
  v14 = glp_serialized_integer32_control(ExprCount);
  v15 = *(a1 + 8);
  v16 = *(a1 + 9);
  v17 = v16 + 1;
  if (v16 + 1 <= v15)
  {
    v20 = a1[5];
    v21 = *(a1 + 9);
  }

  else
  {
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v18 = 2 * v15;
    if (v18 <= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    v20 = (a1[1])(*a1, v19, "Vector Storage (uint8_t, growth)");
    memcpy(v20, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v19;
    a1[5] = v20;
    v21 = *(a1 + 9);
  }

  result = memmove(&v20[v16 + 1], &v20[v16], (v21 - v16));
  *(a1[5] + v16) = v14;
  v23 = *(a1 + 9);
  v24 = v23 + 1;
  *(a1 + 9) = v23 + 1;
  if ((v14 & 0x80000000) != 0)
  {
    v25 = (v14 >> 1) & 7;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v44 = v23 + 4;
        v45 = *(a1 + 8);
        if (v44 <= v45)
        {
          v48 = a1[5];
          v49 = v24;
        }

        else
        {
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = 2 * v45;
          if (v46 <= v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v46;
          }

          v48 = (a1[1])(*a1, v47, "Vector Storage (uint8_t, growth)");
          memcpy(v48, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v47;
          a1[5] = v48;
          v49 = *(a1 + 9);
        }

        result = memmove(&v48[v24 + 1], &v48[v24], v49 - v24);
        v51 = a1[5] + v24;
        *(v51 + 2) = BYTE2(v13);
        *v51 = v13;
        v50 = 3;
      }

      else
      {
        if (v25 != 3)
        {
          return result;
        }

        v32 = v23 + 5;
        v33 = *(a1 + 8);
        if (v32 <= v33)
        {
          v36 = a1[5];
          v37 = v24;
        }

        else
        {
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = 2 * v33;
          if (v34 <= v32)
          {
            v35 = v32;
          }

          else
          {
            v35 = v34;
          }

          v36 = (a1[1])(*a1, v35, "Vector Storage (uint8_t, growth)");
          memcpy(v36, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v35;
          a1[5] = v36;
          v37 = *(a1 + 9);
        }

        result = memmove(&v36[v24 + 1], &v36[v24], v37 - v24);
        *(a1[5] + v24) = v13;
        v50 = 4;
      }
    }

    else if (v25)
    {
      if (v25 != 1)
      {
        return result;
      }

      v26 = v23 + 3;
      v27 = *(a1 + 8);
      if (v26 <= v27)
      {
        v30 = a1[5];
        v31 = v24;
      }

      else
      {
        if (v27 <= 1)
        {
          v27 = 1;
        }

        v28 = 2 * v27;
        if (v28 <= v26)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        v30 = (a1[1])(*a1, v29, "Vector Storage (uint8_t, growth)");
        memcpy(v30, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v29;
        a1[5] = v30;
        v31 = *(a1 + 9);
      }

      result = memmove(&v30[v24 + 1], &v30[v24], v31 - v24);
      *(a1[5] + v24) = v13;
      v50 = 2;
    }

    else
    {
      v38 = v23 + 2;
      v39 = *(a1 + 8);
      if (v38 <= v39)
      {
        v42 = a1[5];
        v43 = v24;
      }

      else
      {
        if (v39 <= 1)
        {
          v39 = 1;
        }

        v40 = 2 * v39;
        if (v40 <= v38)
        {
          v41 = v38;
        }

        else
        {
          v41 = v40;
        }

        v42 = (a1[1])(*a1, v41, "Vector Storage (uint8_t, growth)");
        memcpy(v42, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v41;
        a1[5] = v42;
        v43 = *(a1 + 9);
      }

      result = memmove(&v42[v24 + 1], &v42[v24], v43 - v24);
      *(a1[5] + v24) = v13;
      v50 = 1;
    }

    *(a1 + 9) += v50;
  }

  return result;
}

uint64_t serializeParameterDeclarationFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Name = glpParameterDeclarationNodeGetName(a2);
  serialize_GLPString(a1, Name, v5);
  Extra = glpParameterDeclarationNodeGetExtra(a2);

  return serialize_GLPVariableObject(a1, Extra);
}

void *serializeFunctionPrototypeFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Name = glpFunctionPrototypeNodeGetName(a2);
  serialize_GLPString(a1, Name, v5);
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  serialize_GLPFunctionObject(a1, Extra);
  ParameterCount = glpFunctionPrototypeNodeGetParameterCount(a2);
  v8 = ParameterCount;
  v9 = glp_serialized_integer32_control(ParameterCount);
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = v11 + 1;
  if (v11 + 1 <= v10)
  {
    v15 = a1[5];
    v16 = *(a1 + 9);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = (a1[1])(*a1, v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v14;
    a1[5] = v15;
    v16 = *(a1 + 9);
  }

  result = memmove(&v15[v11 + 1], &v15[v11], (v16 - v11));
  *(a1[5] + v11) = v9;
  v18 = *(a1 + 9);
  v19 = v18 + 1;
  *(a1 + 9) = v18 + 1;
  if ((v9 & 0x80000000) != 0)
  {
    v20 = (v9 >> 1) & 7;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v39 = v18 + 4;
        v40 = *(a1 + 8);
        if (v39 <= v40)
        {
          v43 = a1[5];
          v44 = v19;
        }

        else
        {
          if (v40 <= 1)
          {
            v40 = 1;
          }

          v41 = 2 * v40;
          if (v41 <= v39)
          {
            v42 = v39;
          }

          else
          {
            v42 = v41;
          }

          v43 = (a1[1])(*a1, v42, "Vector Storage (uint8_t, growth)");
          memcpy(v43, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v42;
          a1[5] = v43;
          v44 = *(a1 + 9);
        }

        result = memmove(&v43[v19 + 1], &v43[v19], v44 - v19);
        v46 = a1[5] + v19;
        *(v46 + 2) = BYTE2(v8);
        *v46 = v8;
        v45 = 3;
      }

      else
      {
        if (v20 != 3)
        {
          return result;
        }

        v27 = v18 + 5;
        v28 = *(a1 + 8);
        if (v27 <= v28)
        {
          v31 = a1[5];
          v32 = v19;
        }

        else
        {
          if (v28 <= 1)
          {
            v28 = 1;
          }

          v29 = 2 * v28;
          if (v29 <= v27)
          {
            v30 = v27;
          }

          else
          {
            v30 = v29;
          }

          v31 = (a1[1])(*a1, v30, "Vector Storage (uint8_t, growth)");
          memcpy(v31, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v30;
          a1[5] = v31;
          v32 = *(a1 + 9);
        }

        result = memmove(&v31[v19 + 1], &v31[v19], v32 - v19);
        *(a1[5] + v19) = v8;
        v45 = 4;
      }
    }

    else if (v20)
    {
      if (v20 != 1)
      {
        return result;
      }

      v21 = v18 + 3;
      v22 = *(a1 + 8);
      if (v21 <= v22)
      {
        v25 = a1[5];
        v26 = v19;
      }

      else
      {
        if (v22 <= 1)
        {
          v22 = 1;
        }

        v23 = 2 * v22;
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        v25 = (a1[1])(*a1, v24, "Vector Storage (uint8_t, growth)");
        memcpy(v25, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v24;
        a1[5] = v25;
        v26 = *(a1 + 9);
      }

      result = memmove(&v25[v19 + 1], &v25[v19], v26 - v19);
      *(a1[5] + v19) = v8;
      v45 = 2;
    }

    else
    {
      v33 = v18 + 2;
      v34 = *(a1 + 8);
      if (v33 <= v34)
      {
        v37 = a1[5];
        v38 = v19;
      }

      else
      {
        if (v34 <= 1)
        {
          v34 = 1;
        }

        v35 = 2 * v34;
        if (v35 <= v33)
        {
          v36 = v33;
        }

        else
        {
          v36 = v35;
        }

        v37 = (a1[1])(*a1, v36, "Vector Storage (uint8_t, growth)");
        memcpy(v37, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v36;
        a1[5] = v37;
        v38 = *(a1 + 9);
      }

      result = memmove(&v37[v19 + 1], &v37[v19], v38 - v19);
      *(a1[5] + v19) = v8;
      v45 = 1;
    }

    *(a1 + 9) += v45;
  }

  return result;
}

uint64_t serializeVariableDeclarationFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Name = glpVariableDeclarationNodeGetName(a2);
  serialize_GLPString(a1, Name, v5);
  v6 = glpVariableDeclarationNodeGetIsFromSource(a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  ++*(a1 + 9);
  Extra = glpVariableDeclarationNodeGetExtra(a2);

  return serialize_GLPVariableObject(a1, Extra);
}

void *serializeVariableDeclarationGroupFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  DeclarationCount = glpVariableDeclarationGroupNodeGetDeclarationCount(a2);
  v5 = DeclarationCount;
  v6 = glp_serialized_integer32_control(DeclarationCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

uint64_t serializeQualifiedDeclarationFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Name = glpQualifiedDeclarationNodeGetName(a2);

  return serialize_GLPString(a1, Name, v4);
}

void *serializeQualifiedDeclarationGroupFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  DeclarationCount = glpQualifiedDeclarationGroupNodeGetDeclarationCount(a2);
  v5 = DeclarationCount;
  v6 = glp_serialized_integer32_control(DeclarationCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

void *serializePrimitiveTypeFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Type = glpPrimitiveTypeNodeGetType(a2);
  v5 = Type;
  v6 = glp_serialized_integer32_control(Type);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

uint64_t serializeFieldDeclarationFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Name = glpFieldDeclarationNodeGetName(a2);

  return serialize_GLPString(a1, Name, v4);
}

uint64_t serializeStructTypeFields(void *a1, uint64_t a2)
{
  serializeStructureFields(a1, a2);
  Name = glpStructTypeNodeGetName(a2);

  return serialize_GLPString(a1, Name, v4);
}

uint64_t serializeInterfaceBlockFields(void *a1, uint64_t a2)
{
  serializeStructureFields(a1, a2);
  BlockName = glpInterfaceBlockNodeGetBlockName(a2);
  serialize_GLPString(a1, BlockName, v5);
  InstanceName = glpInterfaceBlockNodeGetInstanceName(a2);
  serialize_GLPString(a1, InstanceName, v7);
  HasInstanceName = glpInterfaceBlockNodeGetHasInstanceName(a2);
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = v10 + 1;
  if (v10 + 1 <= v9)
  {
    v14 = a1[5];
    v15 = *(a1 + 9);
  }

  else
  {
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v12 = 2 * v9;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = (a1[1])(*a1, v13, "Vector Storage (uint8_t, growth)");
    memcpy(v14, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v13;
    a1[5] = v14;
    v15 = *(a1 + 9);
  }

  memmove(&v14[v10 + 1], &v14[v10], (v15 - v10));
  *(a1[5] + v10) = HasInstanceName;
  ++*(a1 + 9);
  IsArray = glpInterfaceBlockNodeGetIsArray(a2);
  v17 = *(a1 + 8);
  v18 = *(a1 + 9);
  v19 = v18 + 1;
  if (v18 + 1 <= v17)
  {
    v22 = a1[5];
    v23 = *(a1 + 9);
  }

  else
  {
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v20 = 2 * v17;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
    memcpy(v22, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v21;
    a1[5] = v22;
    v23 = *(a1 + 9);
  }

  memmove(&v22[v18 + 1], &v22[v18], (v23 - v18));
  *(a1[5] + v18) = IsArray;
  ++*(a1 + 9);
  Extra = glpInterfaceBlockNodeGetExtra(a2);

  return serialize_GLPInterfaceBlockObject(a1, Extra);
}

void *serializeLayoutTypeFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  LayoutPairCount = glpLayoutTypeNodeGetLayoutPairCount(a2);
  v5 = LayoutPairCount;
  v6 = glp_serialized_integer32_control(LayoutPairCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

void *serializeKeywordQualifierFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Qualifier = glpKeywordQualifierNodeGetQualifier(a2);
  v5 = Qualifier;
  v6 = glp_serialized_integer32_control(Qualifier);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

void *serializeLayoutQualifierFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  LayoutPairCount = glpLayoutQualifierNodeGetLayoutPairCount(a2);
  v5 = LayoutPairCount;
  v6 = glp_serialized_integer32_control(LayoutPairCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

void *serializeSubroutineTypeListFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  TypeCount = glpSubroutineTypeListNodeGetTypeCount(a2);
  v5 = TypeCount;
  v6 = glp_serialized_integer32_control(TypeCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

void *serializeQualifierListFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  QualifierCount = glpQualifierListNodeGetQualifierCount(a2);
  v5 = QualifierCount;
  v6 = glp_serialized_integer32_control(QualifierCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

uint64_t serializeGlobalTypeQualifierFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Layout = glpGlobalTypeQualifierNodeGetLayout(a2);

  return serialize_GLPLayoutObject(a1, Layout);
}

uint64_t serializeLayoutPairFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Identifier = glpLayoutPairNodeGetIdentifier(a2);
  serialize_GLPString(a1, Identifier, v5);
  ValueKind = glpLayoutPairNodeGetValueKind(a2);
  v7 = ValueKind;
  v8 = glp_serialized_integer32_control(ValueKind);
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = v10 + 1;
  if (v10 + 1 <= v9)
  {
    v14 = a1[5];
    v15 = *(a1 + 9);
  }

  else
  {
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v12 = 2 * v9;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = (a1[1])(*a1, v13, "Vector Storage (uint8_t, growth)");
    memcpy(v14, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v13;
    a1[5] = v14;
    v15 = *(a1 + 9);
  }

  memmove(&v14[v10 + 1], &v14[v10], (v15 - v10));
  *(a1[5] + v10) = v8;
  v16 = *(a1 + 9);
  v17 = v16 + 1;
  *(a1 + 9) = v16 + 1;
  if ((v8 & 0x80000000) != 0)
  {
    v18 = (v8 >> 1) & 7;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v37 = v16 + 4;
        v38 = *(a1 + 8);
        if (v37 <= v38)
        {
          v41 = a1[5];
          v42 = v17;
        }

        else
        {
          if (v38 <= 1)
          {
            v38 = 1;
          }

          v39 = 2 * v38;
          if (v39 <= v37)
          {
            v40 = v37;
          }

          else
          {
            v40 = v39;
          }

          v41 = (a1[1])(*a1, v40, "Vector Storage (uint8_t, growth)");
          memcpy(v41, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v40;
          a1[5] = v41;
          v42 = *(a1 + 9);
        }

        memmove(&v41[v17 + 1], &v41[v17], v42 - v17);
        v44 = a1[5] + v17;
        *(v44 + 2) = BYTE2(v7);
        *v44 = v7;
        v43 = 3;
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_52;
        }

        v25 = v16 + 5;
        v26 = *(a1 + 8);
        if (v25 <= v26)
        {
          v29 = a1[5];
          v30 = v17;
        }

        else
        {
          if (v26 <= 1)
          {
            v26 = 1;
          }

          v27 = 2 * v26;
          if (v27 <= v25)
          {
            v28 = v25;
          }

          else
          {
            v28 = v27;
          }

          v29 = (a1[1])(*a1, v28, "Vector Storage (uint8_t, growth)");
          memcpy(v29, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v28;
          a1[5] = v29;
          v30 = *(a1 + 9);
        }

        memmove(&v29[v17 + 1], &v29[v17], v30 - v17);
        *(a1[5] + v17) = v7;
        v43 = 4;
      }
    }

    else if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_52;
      }

      v19 = v16 + 3;
      v20 = *(a1 + 8);
      if (v19 <= v20)
      {
        v23 = a1[5];
        v24 = v17;
      }

      else
      {
        if (v20 <= 1)
        {
          v20 = 1;
        }

        v21 = 2 * v20;
        if (v21 <= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v21;
        }

        v23 = (a1[1])(*a1, v22, "Vector Storage (uint8_t, growth)");
        memcpy(v23, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v22;
        a1[5] = v23;
        v24 = *(a1 + 9);
      }

      memmove(&v23[v17 + 1], &v23[v17], v24 - v17);
      *(a1[5] + v17) = v7;
      v43 = 2;
    }

    else
    {
      v31 = v16 + 2;
      v32 = *(a1 + 8);
      if (v31 <= v32)
      {
        v35 = a1[5];
        v36 = v17;
      }

      else
      {
        if (v32 <= 1)
        {
          v32 = 1;
        }

        v33 = 2 * v32;
        if (v33 <= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v33;
        }

        v35 = (a1[1])(*a1, v34, "Vector Storage (uint8_t, growth)");
        memcpy(v35, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v34;
        a1[5] = v35;
        v36 = *(a1 + 9);
      }

      memmove(&v35[v17 + 1], &v35[v17], v36 - v17);
      *(a1[5] + v17) = v7;
      v43 = 1;
    }

    *(a1 + 9) += v43;
  }

LABEL_52:
  Value = glpLayoutPairNodeGetValue(a2);
  v46 = *(a1 + 8);
  v47 = *(a1 + 9);
  v48 = v47 + 4;
  if (v47 + 4 <= v46)
  {
    v51 = a1[5];
    v52 = *(a1 + 9);
  }

  else
  {
    if (v46 <= 1)
    {
      v46 = 1;
    }

    v49 = 2 * v46;
    if (v49 <= v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v49;
    }

    v51 = (a1[1])(*a1, v50, "Vector Storage (uint8_t, growth)");
    memcpy(v51, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v50;
    a1[5] = v51;
    v52 = *(a1 + 9);
  }

  memmove(&v51[v47 + 1], &v51[v47], (v52 - v47));
  *(a1[5] + v47) = Value;
  *(a1 + 9) += 4;
  String = glpLayoutPairNodeGetString(a2);

  return serialize_GLPString(a1, String, v53);
}

void *serializeBlockFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  NeedsNewScope = glpBlockNodeGetNeedsNewScope(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = NeedsNewScope;
  ++*(a1 + 9);
  StatementCount = glpBlockNodeGetStatementCount(a2);
  v13 = StatementCount;
  v14 = glp_serialized_integer32_control(StatementCount);
  v15 = *(a1 + 8);
  v16 = *(a1 + 9);
  v17 = v16 + 1;
  if (v16 + 1 <= v15)
  {
    v20 = a1[5];
    v21 = *(a1 + 9);
  }

  else
  {
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v18 = 2 * v15;
    if (v18 <= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    v20 = (a1[1])(*a1, v19, "Vector Storage (uint8_t, growth)");
    memcpy(v20, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v19;
    a1[5] = v20;
    v21 = *(a1 + 9);
  }

  result = memmove(&v20[v16 + 1], &v20[v16], (v21 - v16));
  *(a1[5] + v16) = v14;
  v23 = *(a1 + 9);
  v24 = v23 + 1;
  *(a1 + 9) = v23 + 1;
  if ((v14 & 0x80000000) != 0)
  {
    v25 = (v14 >> 1) & 7;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v44 = v23 + 4;
        v45 = *(a1 + 8);
        if (v44 <= v45)
        {
          v48 = a1[5];
          v49 = v24;
        }

        else
        {
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = 2 * v45;
          if (v46 <= v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v46;
          }

          v48 = (a1[1])(*a1, v47, "Vector Storage (uint8_t, growth)");
          memcpy(v48, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v47;
          a1[5] = v48;
          v49 = *(a1 + 9);
        }

        result = memmove(&v48[v24 + 1], &v48[v24], v49 - v24);
        v51 = a1[5] + v24;
        *(v51 + 2) = BYTE2(v13);
        *v51 = v13;
        v50 = 3;
      }

      else
      {
        if (v25 != 3)
        {
          return result;
        }

        v32 = v23 + 5;
        v33 = *(a1 + 8);
        if (v32 <= v33)
        {
          v36 = a1[5];
          v37 = v24;
        }

        else
        {
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = 2 * v33;
          if (v34 <= v32)
          {
            v35 = v32;
          }

          else
          {
            v35 = v34;
          }

          v36 = (a1[1])(*a1, v35, "Vector Storage (uint8_t, growth)");
          memcpy(v36, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v35;
          a1[5] = v36;
          v37 = *(a1 + 9);
        }

        result = memmove(&v36[v24 + 1], &v36[v24], v37 - v24);
        *(a1[5] + v24) = v13;
        v50 = 4;
      }
    }

    else if (v25)
    {
      if (v25 != 1)
      {
        return result;
      }

      v26 = v23 + 3;
      v27 = *(a1 + 8);
      if (v26 <= v27)
      {
        v30 = a1[5];
        v31 = v24;
      }

      else
      {
        if (v27 <= 1)
        {
          v27 = 1;
        }

        v28 = 2 * v27;
        if (v28 <= v26)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        v30 = (a1[1])(*a1, v29, "Vector Storage (uint8_t, growth)");
        memcpy(v30, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v29;
        a1[5] = v30;
        v31 = *(a1 + 9);
      }

      result = memmove(&v30[v24 + 1], &v30[v24], v31 - v24);
      *(a1[5] + v24) = v13;
      v50 = 2;
    }

    else
    {
      v38 = v23 + 2;
      v39 = *(a1 + 8);
      if (v38 <= v39)
      {
        v42 = a1[5];
        v43 = v24;
      }

      else
      {
        if (v39 <= 1)
        {
          v39 = 1;
        }

        v40 = 2 * v39;
        if (v40 <= v38)
        {
          v41 = v38;
        }

        else
        {
          v41 = v40;
        }

        v42 = (a1[1])(*a1, v41, "Vector Storage (uint8_t, growth)");
        memcpy(v42, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v41;
        a1[5] = v42;
        v43 = *(a1 + 9);
      }

      result = memmove(&v42[v24 + 1], &v42[v24], v43 - v24);
      *(a1[5] + v24) = v13;
      v50 = 1;
    }

    *(a1 + 9) += v50;
  }

  return result;
}

void *serializeCaseStatementFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  IsStray = glpCaseStatementNodeGetIsStray(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  result = memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = IsStray;
  ++*(a1 + 9);
  return result;
}

void *serializeDefaultStatementFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  IsStray = glpDefaultStatementNodeGetIsStray(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  result = memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = IsStray;
  ++*(a1 + 9);
  return result;
}

uint64_t serializeReturnStatementFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Extra = glpReturnStatementNodeGetExtra(a2);

  return serialize_GLPFunctionObject(a1, Extra);
}

void *serializeTopLevelFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  DefCount = glpTopLevelNodeGetDefCount(a2);
  v5 = DefCount;
  v6 = glp_serialized_integer32_control(DefCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

uint64_t serializeRawCallFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpRawCallNodeGetName(a2);
  serialize_GLPString(a1, v4, v5);
  v6 = glpRawCallNodeGetExtra(a2);

  return serialize_GLPFunctionObject(a1, v6);
}

uint64_t serializeSubroutineRawCallFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpSubroutineRawCallNodeGetExtra(a2);

  return serialize_GLPSubroutineUniformObject(a1, v4);
}

void *serializeOffsetFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Extra = glpOffsetNodeGetExtra(a2);
  serialize_pointer(a1, Extra);
  Swizzle = glpOffsetNodeGetSwizzle(a2);
  v6 = Swizzle;
  v7 = glp_serialized_integer32_control(Swizzle);
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = v9 + 1;
  if (v9 + 1 <= v8)
  {
    v13 = a1[5];
    v14 = *(a1 + 9);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v11 = 2 * v8;
    if (v11 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v12;
    a1[5] = v13;
    v14 = *(a1 + 9);
  }

  memmove(&v13[v9 + 1], &v13[v9], (v14 - v9));
  *(a1[5] + v9) = v7;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v7 & 0x80000000) != 0)
  {
    v17 = (v7 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v6);
        *v43 = v6;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          goto LABEL_52;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v6;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_52;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v6;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v6;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

LABEL_52:
  PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(a2);
  v45 = PreSwizzlePrimitiveType;
  v46 = glp_serialized_integer32_control(PreSwizzlePrimitiveType);
  v47 = *(a1 + 8);
  v48 = *(a1 + 9);
  v49 = v48 + 1;
  if (v48 + 1 <= v47)
  {
    v52 = a1[5];
    v53 = *(a1 + 9);
  }

  else
  {
    if (v47 <= 1)
    {
      v47 = 1;
    }

    v50 = 2 * v47;
    if (v50 <= v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = v50;
    }

    v52 = (a1[1])(*a1, v51, "Vector Storage (uint8_t, growth)");
    memcpy(v52, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v51;
    a1[5] = v52;
    v53 = *(a1 + 9);
  }

  memmove(&v52[v48 + 1], &v52[v48], (v53 - v48));
  *(a1[5] + v48) = v46;
  v54 = *(a1 + 9);
  v55 = v54 + 1;
  *(a1 + 9) = v54 + 1;
  if ((v46 & 0x80000000) != 0)
  {
    v56 = (v46 >> 1) & 7;
    if (v56 > 1)
    {
      if (v56 == 2)
      {
        v75 = v54 + 4;
        v76 = *(a1 + 8);
        if (v75 <= v76)
        {
          v79 = a1[5];
          v80 = v55;
        }

        else
        {
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = 2 * v76;
          if (v77 <= v75)
          {
            v78 = v75;
          }

          else
          {
            v78 = v77;
          }

          v79 = (a1[1])(*a1, v78, "Vector Storage (uint8_t, growth)");
          memcpy(v79, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v78;
          a1[5] = v79;
          v80 = *(a1 + 9);
        }

        memmove(&v79[v55 + 1], &v79[v55], v80 - v55);
        v82 = a1[5] + v55;
        *(v82 + 2) = BYTE2(v45);
        *v82 = v45;
        v81 = 3;
      }

      else
      {
        if (v56 != 3)
        {
          goto LABEL_103;
        }

        v63 = v54 + 5;
        v64 = *(a1 + 8);
        if (v63 <= v64)
        {
          v67 = a1[5];
          v68 = v55;
        }

        else
        {
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = 2 * v64;
          if (v65 <= v63)
          {
            v66 = v63;
          }

          else
          {
            v66 = v65;
          }

          v67 = (a1[1])(*a1, v66, "Vector Storage (uint8_t, growth)");
          memcpy(v67, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v66;
          a1[5] = v67;
          v68 = *(a1 + 9);
        }

        memmove(&v67[v55 + 1], &v67[v55], v68 - v55);
        *(a1[5] + v55) = v45;
        v81 = 4;
      }
    }

    else if (v56)
    {
      if (v56 != 1)
      {
        goto LABEL_103;
      }

      v57 = v54 + 3;
      v58 = *(a1 + 8);
      if (v57 <= v58)
      {
        v61 = a1[5];
        v62 = v55;
      }

      else
      {
        if (v58 <= 1)
        {
          v58 = 1;
        }

        v59 = 2 * v58;
        if (v59 <= v57)
        {
          v60 = v57;
        }

        else
        {
          v60 = v59;
        }

        v61 = (a1[1])(*a1, v60, "Vector Storage (uint8_t, growth)");
        memcpy(v61, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v60;
        a1[5] = v61;
        v62 = *(a1 + 9);
      }

      memmove(&v61[v55 + 1], &v61[v55], v62 - v55);
      *(a1[5] + v55) = v45;
      v81 = 2;
    }

    else
    {
      v69 = v54 + 2;
      v70 = *(a1 + 8);
      if (v69 <= v70)
      {
        v73 = a1[5];
        v74 = v55;
      }

      else
      {
        if (v70 <= 1)
        {
          v70 = 1;
        }

        v71 = 2 * v70;
        if (v71 <= v69)
        {
          v72 = v69;
        }

        else
        {
          v72 = v71;
        }

        v73 = (a1[1])(*a1, v72, "Vector Storage (uint8_t, growth)");
        memcpy(v73, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v72;
        a1[5] = v73;
        v74 = *(a1 + 9);
      }

      memmove(&v73[v55 + 1], &v73[v55], v74 - v55);
      *(a1[5] + v55) = v45;
      v81 = 1;
    }

    *(a1 + 9) += v81;
  }

LABEL_103:
  CompStride = glpOffsetNodeGetCompStride(a2);
  v84 = CompStride;
  v85 = glp_serialized_integer32_control(CompStride);
  v86 = *(a1 + 8);
  v87 = *(a1 + 9);
  v88 = v87 + 1;
  if (v87 + 1 <= v86)
  {
    v91 = a1[5];
    v92 = *(a1 + 9);
  }

  else
  {
    if (v86 <= 1)
    {
      v86 = 1;
    }

    v89 = 2 * v86;
    if (v89 <= v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = v89;
    }

    v91 = (a1[1])(*a1, v90, "Vector Storage (uint8_t, growth)");
    memcpy(v91, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v90;
    a1[5] = v91;
    v92 = *(a1 + 9);
  }

  result = memmove(&v91[v87 + 1], &v91[v87], (v92 - v87));
  *(a1[5] + v87) = v85;
  v94 = *(a1 + 9);
  v95 = v94 + 1;
  *(a1 + 9) = v94 + 1;
  if ((v85 & 0x80000000) != 0)
  {
    v96 = (v85 >> 1) & 7;
    if (v96 > 1)
    {
      if (v96 == 2)
      {
        v115 = v94 + 4;
        v116 = *(a1 + 8);
        if (v115 <= v116)
        {
          v119 = a1[5];
          v120 = v95;
        }

        else
        {
          if (v116 <= 1)
          {
            v116 = 1;
          }

          v117 = 2 * v116;
          if (v117 <= v115)
          {
            v118 = v115;
          }

          else
          {
            v118 = v117;
          }

          v119 = (a1[1])(*a1, v118, "Vector Storage (uint8_t, growth)");
          memcpy(v119, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v118;
          a1[5] = v119;
          v120 = *(a1 + 9);
        }

        result = memmove(&v119[v95 + 1], &v119[v95], v120 - v95);
        v122 = a1[5] + v95;
        *(v122 + 2) = BYTE2(v84);
        *v122 = v84;
        v121 = 3;
      }

      else
      {
        if (v96 != 3)
        {
          return result;
        }

        v103 = v94 + 5;
        v104 = *(a1 + 8);
        if (v103 <= v104)
        {
          v107 = a1[5];
          v108 = v95;
        }

        else
        {
          if (v104 <= 1)
          {
            v104 = 1;
          }

          v105 = 2 * v104;
          if (v105 <= v103)
          {
            v106 = v103;
          }

          else
          {
            v106 = v105;
          }

          v107 = (a1[1])(*a1, v106, "Vector Storage (uint8_t, growth)");
          memcpy(v107, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v106;
          a1[5] = v107;
          v108 = *(a1 + 9);
        }

        result = memmove(&v107[v95 + 1], &v107[v95], v108 - v95);
        *(a1[5] + v95) = v84;
        v121 = 4;
      }
    }

    else if (v96)
    {
      if (v96 != 1)
      {
        return result;
      }

      v97 = v94 + 3;
      v98 = *(a1 + 8);
      if (v97 <= v98)
      {
        v101 = a1[5];
        v102 = v95;
      }

      else
      {
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v99 = 2 * v98;
        if (v99 <= v97)
        {
          v100 = v97;
        }

        else
        {
          v100 = v99;
        }

        v101 = (a1[1])(*a1, v100, "Vector Storage (uint8_t, growth)");
        memcpy(v101, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v100;
        a1[5] = v101;
        v102 = *(a1 + 9);
      }

      result = memmove(&v101[v95 + 1], &v101[v95], v102 - v95);
      *(a1[5] + v95) = v84;
      v121 = 2;
    }

    else
    {
      v109 = v94 + 2;
      v110 = *(a1 + 8);
      if (v109 <= v110)
      {
        v113 = a1[5];
        v114 = v95;
      }

      else
      {
        if (v110 <= 1)
        {
          v110 = 1;
        }

        v111 = 2 * v110;
        if (v111 <= v109)
        {
          v112 = v109;
        }

        else
        {
          v112 = v111;
        }

        v113 = (a1[1])(*a1, v112, "Vector Storage (uint8_t, growth)");
        memcpy(v113, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v112;
        a1[5] = v113;
        v114 = *(a1 + 9);
      }

      result = memmove(&v113[v95 + 1], &v113[v95], v114 - v95);
      *(a1[5] + v95) = v84;
      v121 = 1;
    }

    *(a1 + 9) += v121;
  }

  return result;
}

void *serializeLValueFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  VariableName = glpLValueNodeGetVariableName(a2);
  serialize_GLPString(a1, VariableName, v5);
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  serialize_GLPVariableObject(a1, VariableExtra);
  IndexLevel = glpLValueNodeGetIndexLevel(a2);
  v8 = IndexLevel;
  v9 = glp_serialized_integer32_control(IndexLevel);
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = v11 + 1;
  if (v11 + 1 <= v10)
  {
    v15 = a1[5];
    v16 = *(a1 + 9);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = (a1[1])(*a1, v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v14;
    a1[5] = v15;
    v16 = *(a1 + 9);
  }

  result = memmove(&v15[v11 + 1], &v15[v11], (v16 - v11));
  *(a1[5] + v11) = v9;
  v18 = *(a1 + 9);
  v19 = v18 + 1;
  *(a1 + 9) = v18 + 1;
  if ((v9 & 0x80000000) != 0)
  {
    v20 = (v9 >> 1) & 7;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v39 = v18 + 4;
        v40 = *(a1 + 8);
        if (v39 <= v40)
        {
          v43 = a1[5];
          v44 = v19;
        }

        else
        {
          if (v40 <= 1)
          {
            v40 = 1;
          }

          v41 = 2 * v40;
          if (v41 <= v39)
          {
            v42 = v39;
          }

          else
          {
            v42 = v41;
          }

          v43 = (a1[1])(*a1, v42, "Vector Storage (uint8_t, growth)");
          memcpy(v43, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v42;
          a1[5] = v43;
          v44 = *(a1 + 9);
        }

        result = memmove(&v43[v19 + 1], &v43[v19], v44 - v19);
        v46 = a1[5] + v19;
        *(v46 + 2) = BYTE2(v8);
        *v46 = v8;
        v45 = 3;
      }

      else
      {
        if (v20 != 3)
        {
          return result;
        }

        v27 = v18 + 5;
        v28 = *(a1 + 8);
        if (v27 <= v28)
        {
          v31 = a1[5];
          v32 = v19;
        }

        else
        {
          if (v28 <= 1)
          {
            v28 = 1;
          }

          v29 = 2 * v28;
          if (v29 <= v27)
          {
            v30 = v27;
          }

          else
          {
            v30 = v29;
          }

          v31 = (a1[1])(*a1, v30, "Vector Storage (uint8_t, growth)");
          memcpy(v31, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v30;
          a1[5] = v31;
          v32 = *(a1 + 9);
        }

        result = memmove(&v31[v19 + 1], &v31[v19], v32 - v19);
        *(a1[5] + v19) = v8;
        v45 = 4;
      }
    }

    else if (v20)
    {
      if (v20 != 1)
      {
        return result;
      }

      v21 = v18 + 3;
      v22 = *(a1 + 8);
      if (v21 <= v22)
      {
        v25 = a1[5];
        v26 = v19;
      }

      else
      {
        if (v22 <= 1)
        {
          v22 = 1;
        }

        v23 = 2 * v22;
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        v25 = (a1[1])(*a1, v24, "Vector Storage (uint8_t, growth)");
        memcpy(v25, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v24;
        a1[5] = v25;
        v26 = *(a1 + 9);
      }

      result = memmove(&v25[v19 + 1], &v25[v19], v26 - v19);
      *(a1[5] + v19) = v8;
      v45 = 2;
    }

    else
    {
      v33 = v18 + 2;
      v34 = *(a1 + 8);
      if (v33 <= v34)
      {
        v37 = a1[5];
        v38 = v19;
      }

      else
      {
        if (v34 <= 1)
        {
          v34 = 1;
        }

        v35 = 2 * v34;
        if (v35 <= v33)
        {
          v36 = v33;
        }

        else
        {
          v36 = v35;
        }

        v37 = (a1[1])(*a1, v36, "Vector Storage (uint8_t, growth)");
        memcpy(v37, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v36;
        a1[5] = v37;
        v38 = *(a1 + 9);
      }

      result = memmove(&v37[v19 + 1], &v37[v19], v38 - v19);
      *(a1[5] + v19) = v8;
      v45 = 1;
    }

    *(a1 + 9) += v45;
  }

  return result;
}

uint64_t serializeIBPartialDerefFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Ib = glpIBPartialDerefNodeGetIb(a2);

  return serialize_GLPInterfaceBlockObject(a1, Ib);
}

void *serializePPStreamOpFields(void *a1, uint64_t a2)
{
  serializeCallFields(a1, a2);
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  v5 = ReturnPrimitiveType;
  v6 = glp_serialized_integer32_control(ReturnPrimitiveType);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v14 = *(a1 + 9);
  v15 = v14 + 1;
  *(a1 + 9) = v14 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v16 = (v6 >> 1) & 7;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v35 = v14 + 4;
        v36 = *(a1 + 8);
        if (v35 <= v36)
        {
          v39 = a1[5];
          v40 = v15;
        }

        else
        {
          if (v36 <= 1)
          {
            v36 = 1;
          }

          v37 = 2 * v36;
          if (v37 <= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          v39 = (a1[1])(*a1, v38, "Vector Storage (uint8_t, growth)");
          memcpy(v39, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v38;
          a1[5] = v39;
          v40 = *(a1 + 9);
        }

        memmove(&v39[v15 + 1], &v39[v15], v40 - v15);
        v42 = a1[5] + v15;
        *(v42 + 2) = BYTE2(v5);
        *v42 = v5;
        v41 = 3;
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_52;
        }

        v23 = v14 + 5;
        v24 = *(a1 + 8);
        if (v23 <= v24)
        {
          v27 = a1[5];
          v28 = v15;
        }

        else
        {
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = 2 * v24;
          if (v25 <= v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v25;
          }

          v27 = (a1[1])(*a1, v26, "Vector Storage (uint8_t, growth)");
          memcpy(v27, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v26;
          a1[5] = v27;
          v28 = *(a1 + 9);
        }

        memmove(&v27[v15 + 1], &v27[v15], v28 - v15);
        *(a1[5] + v15) = v5;
        v41 = 4;
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_52;
      }

      v17 = v14 + 3;
      v18 = *(a1 + 8);
      if (v17 <= v18)
      {
        v21 = a1[5];
        v22 = v15;
      }

      else
      {
        if (v18 <= 1)
        {
          v18 = 1;
        }

        v19 = 2 * v18;
        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
        memcpy(v21, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v20;
        a1[5] = v21;
        v22 = *(a1 + 9);
      }

      memmove(&v21[v15 + 1], &v21[v15], v22 - v15);
      *(a1[5] + v15) = v5;
      v41 = 2;
    }

    else
    {
      v29 = v14 + 2;
      v30 = *(a1 + 8);
      if (v29 <= v30)
      {
        v33 = a1[5];
        v34 = v15;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (a1[1])(*a1, v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v32;
        a1[5] = v33;
        v34 = *(a1 + 9);
      }

      memmove(&v33[v15 + 1], &v33[v15], v34 - v15);
      *(a1[5] + v15) = v5;
      v41 = 1;
    }

    *(a1 + 9) += v41;
  }

LABEL_52:
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  v44 = Opcode;
  v45 = glp_serialized_integer32_control(Opcode);
  v46 = *(a1 + 8);
  v47 = *(a1 + 9);
  v48 = v47 + 1;
  if (v47 + 1 <= v46)
  {
    v51 = a1[5];
    v52 = *(a1 + 9);
  }

  else
  {
    if (v46 <= 1)
    {
      v46 = 1;
    }

    v49 = 2 * v46;
    if (v49 <= v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v49;
    }

    v51 = (a1[1])(*a1, v50, "Vector Storage (uint8_t, growth)");
    memcpy(v51, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v50;
    a1[5] = v51;
    v52 = *(a1 + 9);
  }

  memmove(&v51[v47 + 1], &v51[v47], (v52 - v47));
  *(a1[5] + v47) = v45;
  v53 = *(a1 + 9);
  v54 = v53 + 1;
  *(a1 + 9) = v53 + 1;
  if ((v45 & 0x80000000) != 0)
  {
    v55 = (v45 >> 1) & 7;
    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v74 = v53 + 4;
        v75 = *(a1 + 8);
        if (v74 <= v75)
        {
          v78 = a1[5];
          v79 = v54;
        }

        else
        {
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = 2 * v75;
          if (v76 <= v74)
          {
            v77 = v74;
          }

          else
          {
            v77 = v76;
          }

          v78 = (a1[1])(*a1, v77, "Vector Storage (uint8_t, growth)");
          memcpy(v78, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v77;
          a1[5] = v78;
          v79 = *(a1 + 9);
        }

        memmove(&v78[v54 + 1], &v78[v54], v79 - v54);
        v81 = a1[5] + v54;
        *(v81 + 2) = BYTE2(v44);
        *v81 = v44;
        v80 = 3;
      }

      else
      {
        if (v55 != 3)
        {
          goto LABEL_103;
        }

        v62 = v53 + 5;
        v63 = *(a1 + 8);
        if (v62 <= v63)
        {
          v66 = a1[5];
          v67 = v54;
        }

        else
        {
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = 2 * v63;
          if (v64 <= v62)
          {
            v65 = v62;
          }

          else
          {
            v65 = v64;
          }

          v66 = (a1[1])(*a1, v65, "Vector Storage (uint8_t, growth)");
          memcpy(v66, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v65;
          a1[5] = v66;
          v67 = *(a1 + 9);
        }

        memmove(&v66[v54 + 1], &v66[v54], v67 - v54);
        *(a1[5] + v54) = v44;
        v80 = 4;
      }
    }

    else if (v55)
    {
      if (v55 != 1)
      {
        goto LABEL_103;
      }

      v56 = v53 + 3;
      v57 = *(a1 + 8);
      if (v56 <= v57)
      {
        v60 = a1[5];
        v61 = v54;
      }

      else
      {
        if (v57 <= 1)
        {
          v57 = 1;
        }

        v58 = 2 * v57;
        if (v58 <= v56)
        {
          v59 = v56;
        }

        else
        {
          v59 = v58;
        }

        v60 = (a1[1])(*a1, v59, "Vector Storage (uint8_t, growth)");
        memcpy(v60, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v59;
        a1[5] = v60;
        v61 = *(a1 + 9);
      }

      memmove(&v60[v54 + 1], &v60[v54], v61 - v54);
      *(a1[5] + v54) = v44;
      v80 = 2;
    }

    else
    {
      v68 = v53 + 2;
      v69 = *(a1 + 8);
      if (v68 <= v69)
      {
        v72 = a1[5];
        v73 = v54;
      }

      else
      {
        if (v69 <= 1)
        {
          v69 = 1;
        }

        v70 = 2 * v69;
        if (v70 <= v68)
        {
          v71 = v68;
        }

        else
        {
          v71 = v70;
        }

        v72 = (a1[1])(*a1, v71, "Vector Storage (uint8_t, growth)");
        memcpy(v72, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v71;
        a1[5] = v72;
        v73 = *(a1 + 9);
      }

      memmove(&v72[v54 + 1], &v72[v54], v73 - v54);
      *(a1[5] + v54) = v44;
      v80 = 1;
    }

    *(a1 + 9) += v80;
  }

LABEL_103:
  OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a2);
  v83 = OpPrimitiveType;
  v84 = glp_serialized_integer32_control(OpPrimitiveType);
  v85 = *(a1 + 8);
  v86 = *(a1 + 9);
  v87 = v86 + 1;
  if (v86 + 1 <= v85)
  {
    v90 = a1[5];
    v91 = *(a1 + 9);
  }

  else
  {
    if (v85 <= 1)
    {
      v85 = 1;
    }

    v88 = 2 * v85;
    if (v88 <= v87)
    {
      v89 = v87;
    }

    else
    {
      v89 = v88;
    }

    v90 = (a1[1])(*a1, v89, "Vector Storage (uint8_t, growth)");
    memcpy(v90, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v89;
    a1[5] = v90;
    v91 = *(a1 + 9);
  }

  memmove(&v90[v86 + 1], &v90[v86], (v91 - v86));
  *(a1[5] + v86) = v84;
  v92 = *(a1 + 9);
  v93 = v92 + 1;
  *(a1 + 9) = v92 + 1;
  if ((v84 & 0x80000000) != 0)
  {
    v94 = (v84 >> 1) & 7;
    if (v94 > 1)
    {
      if (v94 == 2)
      {
        v113 = v92 + 4;
        v114 = *(a1 + 8);
        if (v113 <= v114)
        {
          v117 = a1[5];
          v118 = v93;
        }

        else
        {
          if (v114 <= 1)
          {
            v114 = 1;
          }

          v115 = 2 * v114;
          if (v115 <= v113)
          {
            v116 = v113;
          }

          else
          {
            v116 = v115;
          }

          v117 = (a1[1])(*a1, v116, "Vector Storage (uint8_t, growth)");
          memcpy(v117, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v116;
          a1[5] = v117;
          v118 = *(a1 + 9);
        }

        memmove(&v117[v93 + 1], &v117[v93], v118 - v93);
        v120 = a1[5] + v93;
        *(v120 + 2) = BYTE2(v83);
        *v120 = v83;
        v119 = 3;
      }

      else
      {
        if (v94 != 3)
        {
          goto LABEL_154;
        }

        v101 = v92 + 5;
        v102 = *(a1 + 8);
        if (v101 <= v102)
        {
          v105 = a1[5];
          v106 = v93;
        }

        else
        {
          if (v102 <= 1)
          {
            v102 = 1;
          }

          v103 = 2 * v102;
          if (v103 <= v101)
          {
            v104 = v101;
          }

          else
          {
            v104 = v103;
          }

          v105 = (a1[1])(*a1, v104, "Vector Storage (uint8_t, growth)");
          memcpy(v105, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v104;
          a1[5] = v105;
          v106 = *(a1 + 9);
        }

        memmove(&v105[v93 + 1], &v105[v93], v106 - v93);
        *(a1[5] + v93) = v83;
        v119 = 4;
      }
    }

    else if (v94)
    {
      if (v94 != 1)
      {
        goto LABEL_154;
      }

      v95 = v92 + 3;
      v96 = *(a1 + 8);
      if (v95 <= v96)
      {
        v99 = a1[5];
        v100 = v93;
      }

      else
      {
        if (v96 <= 1)
        {
          v96 = 1;
        }

        v97 = 2 * v96;
        if (v97 <= v95)
        {
          v98 = v95;
        }

        else
        {
          v98 = v97;
        }

        v99 = (a1[1])(*a1, v98, "Vector Storage (uint8_t, growth)");
        memcpy(v99, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v98;
        a1[5] = v99;
        v100 = *(a1 + 9);
      }

      memmove(&v99[v93 + 1], &v99[v93], v100 - v93);
      *(a1[5] + v93) = v83;
      v119 = 2;
    }

    else
    {
      v107 = v92 + 2;
      v108 = *(a1 + 8);
      if (v107 <= v108)
      {
        v111 = a1[5];
        v112 = v93;
      }

      else
      {
        if (v108 <= 1)
        {
          v108 = 1;
        }

        v109 = 2 * v108;
        if (v109 <= v107)
        {
          v110 = v107;
        }

        else
        {
          v110 = v109;
        }

        v111 = (a1[1])(*a1, v110, "Vector Storage (uint8_t, growth)");
        memcpy(v111, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v110;
        a1[5] = v111;
        v112 = *(a1 + 9);
      }

      memmove(&v111[v93 + 1], &v111[v93], v112 - v93);
      *(a1[5] + v93) = v83;
      v119 = 1;
    }

    *(a1 + 9) += v119;
  }

LABEL_154:
  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a2);
  v122 = HasSrctex;
  v123 = glp_serialized_integer32_control(HasSrctex);
  v124 = *(a1 + 8);
  v125 = *(a1 + 9);
  v126 = v125 + 1;
  if (v125 + 1 <= v124)
  {
    v129 = a1[5];
    v130 = *(a1 + 9);
  }

  else
  {
    if (v124 <= 1)
    {
      v124 = 1;
    }

    v127 = 2 * v124;
    if (v127 <= v126)
    {
      v128 = v126;
    }

    else
    {
      v128 = v127;
    }

    v129 = (a1[1])(*a1, v128, "Vector Storage (uint8_t, growth)");
    memcpy(v129, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v128;
    a1[5] = v129;
    v130 = *(a1 + 9);
  }

  memmove(&v129[v125 + 1], &v129[v125], (v130 - v125));
  *(a1[5] + v125) = v123;
  v131 = *(a1 + 9);
  v132 = v131 + 1;
  *(a1 + 9) = v131 + 1;
  if ((v123 & 0x80000000) != 0)
  {
    v133 = (v123 >> 1) & 7;
    if (v133 > 1)
    {
      if (v133 == 2)
      {
        v152 = v131 + 4;
        v153 = *(a1 + 8);
        if (v152 <= v153)
        {
          v156 = a1[5];
          v157 = v132;
        }

        else
        {
          if (v153 <= 1)
          {
            v153 = 1;
          }

          v154 = 2 * v153;
          if (v154 <= v152)
          {
            v155 = v152;
          }

          else
          {
            v155 = v154;
          }

          v156 = (a1[1])(*a1, v155, "Vector Storage (uint8_t, growth)");
          memcpy(v156, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v155;
          a1[5] = v156;
          v157 = *(a1 + 9);
        }

        memmove(&v156[v132 + 1], &v156[v132], v157 - v132);
        v159 = a1[5] + v132;
        *(v159 + 2) = BYTE2(v122);
        *v159 = v122;
        v158 = 3;
      }

      else
      {
        if (v133 != 3)
        {
          goto LABEL_205;
        }

        v140 = v131 + 5;
        v141 = *(a1 + 8);
        if (v140 <= v141)
        {
          v144 = a1[5];
          v145 = v132;
        }

        else
        {
          if (v141 <= 1)
          {
            v141 = 1;
          }

          v142 = 2 * v141;
          if (v142 <= v140)
          {
            v143 = v140;
          }

          else
          {
            v143 = v142;
          }

          v144 = (a1[1])(*a1, v143, "Vector Storage (uint8_t, growth)");
          memcpy(v144, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v143;
          a1[5] = v144;
          v145 = *(a1 + 9);
        }

        memmove(&v144[v132 + 1], &v144[v132], v145 - v132);
        *(a1[5] + v132) = v122;
        v158 = 4;
      }
    }

    else if (v133)
    {
      if (v133 != 1)
      {
        goto LABEL_205;
      }

      v134 = v131 + 3;
      v135 = *(a1 + 8);
      if (v134 <= v135)
      {
        v138 = a1[5];
        v139 = v132;
      }

      else
      {
        if (v135 <= 1)
        {
          v135 = 1;
        }

        v136 = 2 * v135;
        if (v136 <= v134)
        {
          v137 = v134;
        }

        else
        {
          v137 = v136;
        }

        v138 = (a1[1])(*a1, v137, "Vector Storage (uint8_t, growth)");
        memcpy(v138, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v137;
        a1[5] = v138;
        v139 = *(a1 + 9);
      }

      memmove(&v138[v132 + 1], &v138[v132], v139 - v132);
      *(a1[5] + v132) = v122;
      v158 = 2;
    }

    else
    {
      v146 = v131 + 2;
      v147 = *(a1 + 8);
      if (v146 <= v147)
      {
        v150 = a1[5];
        v151 = v132;
      }

      else
      {
        if (v147 <= 1)
        {
          v147 = 1;
        }

        v148 = 2 * v147;
        if (v148 <= v146)
        {
          v149 = v146;
        }

        else
        {
          v149 = v148;
        }

        v150 = (a1[1])(*a1, v149, "Vector Storage (uint8_t, growth)");
        memcpy(v150, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v149;
        a1[5] = v150;
        v151 = *(a1 + 9);
      }

      memmove(&v150[v132 + 1], &v150[v132], v151 - v132);
      *(a1[5] + v132) = v122;
      v158 = 1;
    }

    *(a1 + 9) += v158;
  }

LABEL_205:
  HasOffset = glpPPStreamOpNodeGetHasOffset(a2);
  v161 = HasOffset;
  v162 = glp_serialized_integer32_control(HasOffset);
  v163 = *(a1 + 8);
  v164 = *(a1 + 9);
  v165 = v164 + 1;
  if (v164 + 1 <= v163)
  {
    v168 = a1[5];
    v169 = *(a1 + 9);
  }

  else
  {
    if (v163 <= 1)
    {
      v163 = 1;
    }

    v166 = 2 * v163;
    if (v166 <= v165)
    {
      v167 = v165;
    }

    else
    {
      v167 = v166;
    }

    v168 = (a1[1])(*a1, v167, "Vector Storage (uint8_t, growth)");
    memcpy(v168, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v167;
    a1[5] = v168;
    v169 = *(a1 + 9);
  }

  result = memmove(&v168[v164 + 1], &v168[v164], (v169 - v164));
  *(a1[5] + v164) = v162;
  v171 = *(a1 + 9);
  v172 = v171 + 1;
  *(a1 + 9) = v171 + 1;
  if ((v162 & 0x80000000) != 0)
  {
    v173 = (v162 >> 1) & 7;
    if (v173 > 1)
    {
      if (v173 == 2)
      {
        v192 = v171 + 4;
        v193 = *(a1 + 8);
        if (v192 <= v193)
        {
          v196 = a1[5];
          v197 = v172;
        }

        else
        {
          if (v193 <= 1)
          {
            v193 = 1;
          }

          v194 = 2 * v193;
          if (v194 <= v192)
          {
            v195 = v192;
          }

          else
          {
            v195 = v194;
          }

          v196 = (a1[1])(*a1, v195, "Vector Storage (uint8_t, growth)");
          memcpy(v196, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v195;
          a1[5] = v196;
          v197 = *(a1 + 9);
        }

        result = memmove(&v196[v172 + 1], &v196[v172], v197 - v172);
        v199 = a1[5] + v172;
        *(v199 + 2) = BYTE2(v161);
        *v199 = v161;
        v198 = 3;
      }

      else
      {
        if (v173 != 3)
        {
          return result;
        }

        v180 = v171 + 5;
        v181 = *(a1 + 8);
        if (v180 <= v181)
        {
          v184 = a1[5];
          v185 = v172;
        }

        else
        {
          if (v181 <= 1)
          {
            v181 = 1;
          }

          v182 = 2 * v181;
          if (v182 <= v180)
          {
            v183 = v180;
          }

          else
          {
            v183 = v182;
          }

          v184 = (a1[1])(*a1, v183, "Vector Storage (uint8_t, growth)");
          memcpy(v184, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v183;
          a1[5] = v184;
          v185 = *(a1 + 9);
        }

        result = memmove(&v184[v172 + 1], &v184[v172], v185 - v172);
        *(a1[5] + v172) = v161;
        v198 = 4;
      }
    }

    else if (v173)
    {
      if (v173 != 1)
      {
        return result;
      }

      v174 = v171 + 3;
      v175 = *(a1 + 8);
      if (v174 <= v175)
      {
        v178 = a1[5];
        v179 = v172;
      }

      else
      {
        if (v175 <= 1)
        {
          v175 = 1;
        }

        v176 = 2 * v175;
        if (v176 <= v174)
        {
          v177 = v174;
        }

        else
        {
          v177 = v176;
        }

        v178 = (a1[1])(*a1, v177, "Vector Storage (uint8_t, growth)");
        memcpy(v178, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v177;
        a1[5] = v178;
        v179 = *(a1 + 9);
      }

      result = memmove(&v178[v172 + 1], &v178[v172], v179 - v172);
      *(a1[5] + v172) = v161;
      v198 = 2;
    }

    else
    {
      v186 = v171 + 2;
      v187 = *(a1 + 8);
      if (v186 <= v187)
      {
        v190 = a1[5];
        v191 = v172;
      }

      else
      {
        if (v187 <= 1)
        {
          v187 = 1;
        }

        v188 = 2 * v187;
        if (v188 <= v186)
        {
          v189 = v186;
        }

        else
        {
          v189 = v188;
        }

        v190 = (a1[1])(*a1, v189, "Vector Storage (uint8_t, growth)");
        memcpy(v190, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v189;
        a1[5] = v190;
        v191 = *(a1 + 9);
      }

      result = memmove(&v190[v172 + 1], &v190[v172], v191 - v172);
      *(a1[5] + v172) = v161;
      v198 = 1;
    }

    *(a1 + 9) += v198;
  }

  return result;
}

uint64_t serializeSubroutineUniformFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  Extra = glpSubroutineUniformNodeGetExtra(a2);

  return serialize_GLPSubroutineUniformObject(a1, Extra);
}

void *serializeASTFields(void *a1, uint64_t a2)
{
  Kind = glpASTNodeGetKind(a2);
  v5 = Kind;
  v6 = glp_serialized_integer32_control(Kind);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v14 = *(a1 + 9);
  v15 = v14 + 1;
  *(a1 + 9) = v14 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v16 = (v6 >> 1) & 7;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v35 = v14 + 4;
        v36 = *(a1 + 8);
        if (v35 <= v36)
        {
          v39 = a1[5];
          v40 = v15;
        }

        else
        {
          if (v36 <= 1)
          {
            v36 = 1;
          }

          v37 = 2 * v36;
          if (v37 <= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          v39 = (a1[1])(*a1, v38, "Vector Storage (uint8_t, growth)");
          memcpy(v39, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v38;
          a1[5] = v39;
          v40 = *(a1 + 9);
        }

        memmove(&v39[v15 + 1], &v39[v15], v40 - v15);
        v42 = a1[5] + v15;
        *(v42 + 2) = BYTE2(v5);
        *v42 = v5;
        v41 = 3;
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_52;
        }

        v23 = v14 + 5;
        v24 = *(a1 + 8);
        if (v23 <= v24)
        {
          v27 = a1[5];
          v28 = v15;
        }

        else
        {
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = 2 * v24;
          if (v25 <= v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v25;
          }

          v27 = (a1[1])(*a1, v26, "Vector Storage (uint8_t, growth)");
          memcpy(v27, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v26;
          a1[5] = v27;
          v28 = *(a1 + 9);
        }

        memmove(&v27[v15 + 1], &v27[v15], v28 - v15);
        *(a1[5] + v15) = v5;
        v41 = 4;
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_52;
      }

      v17 = v14 + 3;
      v18 = *(a1 + 8);
      if (v17 <= v18)
      {
        v21 = a1[5];
        v22 = v15;
      }

      else
      {
        if (v18 <= 1)
        {
          v18 = 1;
        }

        v19 = 2 * v18;
        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
        memcpy(v21, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v20;
        a1[5] = v21;
        v22 = *(a1 + 9);
      }

      memmove(&v21[v15 + 1], &v21[v15], v22 - v15);
      *(a1[5] + v15) = v5;
      v41 = 2;
    }

    else
    {
      v29 = v14 + 2;
      v30 = *(a1 + 8);
      if (v29 <= v30)
      {
        v33 = a1[5];
        v34 = v15;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (a1[1])(*a1, v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v32;
        a1[5] = v33;
        v34 = *(a1 + 9);
      }

      memmove(&v33[v15 + 1], &v33[v15], v34 - v15);
      *(a1[5] + v15) = v5;
      v41 = 1;
    }

    *(a1 + 9) += v41;
  }

LABEL_52:
  SaFlags = glpASTNodeGetSaFlags(a2);
  v44 = glp_serialized_integer64_control(SaFlags);
  v45 = *(a1 + 8);
  v46 = *(a1 + 9);
  v47 = v46 + 1;
  if (v46 + 1 <= v45)
  {
    v50 = a1[5];
    v51 = *(a1 + 9);
  }

  else
  {
    if (v45 <= 1)
    {
      v45 = 1;
    }

    v48 = 2 * v45;
    if (v48 <= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    v50 = (a1[1])(*a1, v49, "Vector Storage (uint8_t, growth)");
    memcpy(v50, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v49;
    a1[5] = v50;
    v51 = *(a1 + 9);
  }

  memmove(&v50[v46 + 1], &v50[v46], (v51 - v46));
  *(a1[5] + v46) = v44;
  v52 = *(a1 + 9);
  v53 = v52 + 1;
  *(a1 + 9) = v52 + 1;
  if ((v44 & 0x80000000) != 0)
  {
    v54 = (v44 >> 1) & 7;
    if (v54 > 3)
    {
      if (((v44 >> 1) & 7) <= 5)
      {
        v61 = v52 + 5;
        if (v54 == 4)
        {
          v62 = *(a1 + 8);
          if (v61 <= v62)
          {
            v65 = a1[5];
            v66 = v53;
          }

          else
          {
            if (v62 <= 1)
            {
              v62 = 1;
            }

            v63 = 2 * v62;
            if (v63 <= v61)
            {
              v64 = v61;
            }

            else
            {
              v64 = v63;
            }

            v65 = (a1[1])(*a1, v64, "Vector Storage (uint8_t, growth)");
            memcpy(v65, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v64;
            a1[5] = v65;
            v66 = *(a1 + 9);
          }

          memmove(&v65[v53 + 1], &v65[v53], v66 - v53);
          *(a1[5] + v53) = SaFlags;
          v105 = *(a1 + 8);
          v104 = *(a1 + 9);
          v53 = v104 + 4;
          *(a1 + 9) = v104 + 4;
          v106 = v104 + 5;
          if (v106 <= v105)
          {
            v109 = a1[5];
            v110 = v53;
          }

          else
          {
            if (v105 <= 1)
            {
              v105 = 1;
            }

            v107 = 2 * v105;
            if (v107 <= v106)
            {
              v108 = v106;
            }

            else
            {
              v108 = v107;
            }

            v109 = (a1[1])(*a1, v108, "Vector Storage (uint8_t, growth)");
            memcpy(v109, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v108;
            a1[5] = v109;
            v110 = *(a1 + 9);
          }

          SaFlags >>= 32;
          v103 = v110 - v53;
          v102 = &v109[v53];
          goto LABEL_160;
        }

        v85 = *(a1 + 8);
        if (v61 <= v85)
        {
          v88 = a1[5];
          v89 = v53;
        }

        else
        {
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = 2 * v85;
          if (v86 <= v61)
          {
            v87 = v61;
          }

          else
          {
            v87 = v86;
          }

          v88 = (a1[1])(*a1, v87, "Vector Storage (uint8_t, growth)");
          memcpy(v88, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v87;
          a1[5] = v88;
          v89 = *(a1 + 9);
        }

        memmove(&v88[v53 + 1], &v88[v53], v89 - v53);
        *(a1[5] + v53) = SaFlags;
        v123 = *(a1 + 8);
        v122 = *(a1 + 9);
        v53 = v122 + 4;
        *(a1 + 9) = v122 + 4;
        v124 = v122 + 6;
        if (v124 <= v123)
        {
          v127 = a1[5];
          v128 = v53;
        }

        else
        {
          if (v123 <= 1)
          {
            v123 = 1;
          }

          v125 = 2 * v123;
          if (v125 <= v124)
          {
            v126 = v124;
          }

          else
          {
            v126 = v125;
          }

          v127 = (a1[1])(*a1, v126, "Vector Storage (uint8_t, growth)");
          memcpy(v127, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v126;
          a1[5] = v127;
          v128 = *(a1 + 9);
        }

        SaFlags >>= 32;
        v121 = v128 - v53;
        v120 = &v127[v53];
LABEL_166:
        memmove(v120 + 1, v120, v121);
        *(a1[5] + v53) = SaFlags;
        v129 = 2;
        goto LABEL_167;
      }

      if (v54 != 6)
      {
        v96 = v52 + 9;
        v97 = *(a1 + 8);
        if (v96 <= v97)
        {
          v100 = a1[5];
          v101 = v53;
        }

        else
        {
          if (v97 <= 1)
          {
            v97 = 1;
          }

          v98 = 2 * v97;
          if (v98 <= v96)
          {
            v99 = v96;
          }

          else
          {
            v99 = v98;
          }

          v100 = (a1[1])(*a1, v99, "Vector Storage (uint8_t, growth)");
          memcpy(v100, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v99;
          a1[5] = v100;
          v101 = *(a1 + 9);
        }

        memmove(&v100[v53 + 1], &v100[v53], v101 - v53);
        *(a1[5] + v53) = SaFlags;
        v129 = 8;
        goto LABEL_167;
      }

      v73 = v52 + 5;
      v74 = *(a1 + 8);
      if (v73 <= v74)
      {
        v77 = a1[5];
        v78 = v53;
      }

      else
      {
        if (v74 <= 1)
        {
          v74 = 1;
        }

        v75 = 2 * v74;
        if (v75 <= v73)
        {
          v76 = v73;
        }

        else
        {
          v76 = v75;
        }

        v77 = (a1[1])(*a1, v76, "Vector Storage (uint8_t, growth)");
        memcpy(v77, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v76;
        a1[5] = v77;
        v78 = *(a1 + 9);
      }

      memmove(&v77[v53 + 1], &v77[v53], v78 - v53);
      *(a1[5] + v53) = SaFlags;
      v113 = *(a1 + 8);
      v112 = *(a1 + 9);
      v114 = v112 + 4;
      *(a1 + 9) = v112 + 4;
      v115 = v112 + 7;
      if (v115 <= v113)
      {
        v118 = a1[5];
        v119 = v114;
      }

      else
      {
        if (v113 <= 1)
        {
          v113 = 1;
        }

        v116 = 2 * v113;
        if (v116 <= v115)
        {
          v117 = v115;
        }

        else
        {
          v117 = v116;
        }

        v118 = (a1[1])(*a1, v117, "Vector Storage (uint8_t, growth)");
        memcpy(v118, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v117;
        a1[5] = v118;
        v119 = *(a1 + 9);
      }

      memmove(&v118[v114 + 1], &v118[v114], v119 - v114);
      v130 = a1[5] + v114;
      *(v130 + 2) = BYTE6(SaFlags);
      *v130 = WORD2(SaFlags);
    }

    else
    {
      if (((v44 >> 1) & 7) <= 1)
      {
        if (!v54)
        {
          v55 = v52 + 2;
          v56 = *(a1 + 8);
          if (v55 <= v56)
          {
            v59 = a1[5];
            v60 = v53;
          }

          else
          {
            if (v56 <= 1)
            {
              v56 = 1;
            }

            v57 = 2 * v56;
            if (v57 <= v55)
            {
              v58 = v55;
            }

            else
            {
              v58 = v57;
            }

            v59 = (a1[1])(*a1, v58, "Vector Storage (uint8_t, growth)");
            memcpy(v59, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v58;
            a1[5] = v59;
            v60 = *(a1 + 9);
          }

          v102 = &v59[v53];
          v103 = v60 - v53;
LABEL_160:
          memmove(v102 + 1, v102, v103);
          *(a1[5] + v53) = SaFlags;
          v129 = 1;
LABEL_167:
          *(a1 + 9) += v129;
          goto LABEL_168;
        }

        v79 = v52 + 3;
        v80 = *(a1 + 8);
        if (v79 <= v80)
        {
          v83 = a1[5];
          v84 = v53;
        }

        else
        {
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = 2 * v80;
          if (v81 <= v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v83 = (a1[1])(*a1, v82, "Vector Storage (uint8_t, growth)");
          memcpy(v83, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v82;
          a1[5] = v83;
          v84 = *(a1 + 9);
        }

        v120 = &v83[v53];
        v121 = v84 - v53;
        goto LABEL_166;
      }

      if (v54 != 2)
      {
        v90 = v52 + 5;
        v91 = *(a1 + 8);
        if (v90 <= v91)
        {
          v94 = a1[5];
          v95 = v53;
        }

        else
        {
          if (v91 <= 1)
          {
            v91 = 1;
          }

          v92 = 2 * v91;
          if (v92 <= v90)
          {
            v93 = v90;
          }

          else
          {
            v93 = v92;
          }

          v94 = (a1[1])(*a1, v93, "Vector Storage (uint8_t, growth)");
          memcpy(v94, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v93;
          a1[5] = v94;
          v95 = *(a1 + 9);
        }

        memmove(&v94[v53 + 1], &v94[v53], v95 - v53);
        *(a1[5] + v53) = SaFlags;
        v129 = 4;
        goto LABEL_167;
      }

      v67 = v52 + 4;
      v68 = *(a1 + 8);
      if (v67 <= v68)
      {
        v71 = a1[5];
        v72 = v53;
      }

      else
      {
        if (v68 <= 1)
        {
          v68 = 1;
        }

        v69 = 2 * v68;
        if (v69 <= v67)
        {
          v70 = v67;
        }

        else
        {
          v70 = v69;
        }

        v71 = (a1[1])(*a1, v70, "Vector Storage (uint8_t, growth)");
        memcpy(v71, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v70;
        a1[5] = v71;
        v72 = *(a1 + 9);
      }

      memmove(&v71[v53 + 1], &v71[v53], v72 - v53);
      v111 = a1[5] + v53;
      *(v111 + 2) = BYTE2(SaFlags);
      *v111 = SaFlags;
    }

    v129 = 3;
    goto LABEL_167;
  }

LABEL_168:
  SaType = glpASTNodeGetSaType(a2);
  serialize_GLPType(a1, SaType);
  glpASTNodeGetLocation(a2, &v171);
  serialize_GLPString(a1, v171.n128_u64[0], v171.n128_u64[1]);
  v132 = v172;
  v133 = glp_serialized_integer32_control(v172);
  v134 = *(a1 + 8);
  v135 = *(a1 + 9);
  v136 = v135 + 1;
  if (v135 + 1 <= v134)
  {
    v139 = a1[5];
    v140 = *(a1 + 9);
  }

  else
  {
    if (v134 <= 1)
    {
      v134 = 1;
    }

    v137 = 2 * v134;
    if (v137 <= v136)
    {
      v138 = v136;
    }

    else
    {
      v138 = v137;
    }

    v139 = (a1[1])(*a1, v138, "Vector Storage (uint8_t, growth)");
    memcpy(v139, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v138;
    a1[5] = v139;
    v140 = *(a1 + 9);
  }

  result = memmove(&v139[v135 + 1], &v139[v135], (v140 - v135));
  *(a1[5] + v135) = v133;
  v142 = *(a1 + 9);
  v143 = v142 + 1;
  *(a1 + 9) = v142 + 1;
  if ((v133 & 0x80000000) != 0)
  {
    v144 = (v133 >> 1) & 7;
    if (v144 > 1)
    {
      if (v144 == 2)
      {
        v163 = v142 + 4;
        v164 = *(a1 + 8);
        if (v163 <= v164)
        {
          v167 = a1[5];
          v168 = v143;
        }

        else
        {
          if (v164 <= 1)
          {
            v164 = 1;
          }

          v165 = 2 * v164;
          if (v165 <= v163)
          {
            v166 = v163;
          }

          else
          {
            v166 = v165;
          }

          v167 = (a1[1])(*a1, v166, "Vector Storage (uint8_t, growth)");
          memcpy(v167, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v166;
          a1[5] = v167;
          v168 = *(a1 + 9);
        }

        result = memmove(&v167[v143 + 1], &v167[v143], v168 - v143);
        v170 = a1[5] + v143;
        *(v170 + 2) = BYTE2(v132);
        *v170 = v132;
        v169 = 3;
      }

      else
      {
        if (v144 != 3)
        {
          return result;
        }

        v151 = v142 + 5;
        v152 = *(a1 + 8);
        if (v151 <= v152)
        {
          v155 = a1[5];
          v156 = v143;
        }

        else
        {
          if (v152 <= 1)
          {
            v152 = 1;
          }

          v153 = 2 * v152;
          if (v153 <= v151)
          {
            v154 = v151;
          }

          else
          {
            v154 = v153;
          }

          v155 = (a1[1])(*a1, v154, "Vector Storage (uint8_t, growth)");
          memcpy(v155, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v154;
          a1[5] = v155;
          v156 = *(a1 + 9);
        }

        result = memmove(&v155[v143 + 1], &v155[v143], v156 - v143);
        *(a1[5] + v143) = v132;
        v169 = 4;
      }
    }

    else if (v144)
    {
      if (v144 != 1)
      {
        return result;
      }

      v145 = v142 + 3;
      v146 = *(a1 + 8);
      if (v145 <= v146)
      {
        v149 = a1[5];
        v150 = v143;
      }

      else
      {
        if (v146 <= 1)
        {
          v146 = 1;
        }

        v147 = 2 * v146;
        if (v147 <= v145)
        {
          v148 = v145;
        }

        else
        {
          v148 = v147;
        }

        v149 = (a1[1])(*a1, v148, "Vector Storage (uint8_t, growth)");
        memcpy(v149, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v148;
        a1[5] = v149;
        v150 = *(a1 + 9);
      }

      result = memmove(&v149[v143 + 1], &v149[v143], v150 - v143);
      *(a1[5] + v143) = v132;
      v169 = 2;
    }

    else
    {
      v157 = v142 + 2;
      v158 = *(a1 + 8);
      if (v157 <= v158)
      {
        v161 = a1[5];
        v162 = v143;
      }

      else
      {
        if (v158 <= 1)
        {
          v158 = 1;
        }

        v159 = 2 * v158;
        if (v159 <= v157)
        {
          v160 = v157;
        }

        else
        {
          v160 = v159;
        }

        v161 = (a1[1])(*a1, v160, "Vector Storage (uint8_t, growth)");
        memcpy(v161, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v160;
        a1[5] = v161;
        v162 = *(a1 + 9);
      }

      result = memmove(&v161[v143 + 1], &v161[v143], v162 - v143);
      *(a1[5] + v143) = v132;
      v169 = 1;
    }

    *(a1 + 9) += v169;
  }

  return result;
}

void *serializeCallFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  v4 = glpCallNodeGetArgCount(a2);
  v5 = v4;
  v6 = glp_serialized_integer32_control(v4);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

void *serializeStructureFields(void *a1, uint64_t a2)
{
  serializeASTFields(a1, a2);
  FieldCount = glpStructureNodeGetFieldCount(a2);
  v5 = FieldCount;
  v6 = glp_serialized_integer32_control(FieldCount);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = v8 + 1;
  if (v8 + 1 <= v7)
  {
    v12 = a1[5];
    v13 = *(a1 + 9);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 2 * v7;
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1[1])(*a1, v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v11;
    a1[5] = v12;
    v13 = *(a1 + 9);
  }

  result = memmove(&v12[v8 + 1], &v12[v8], (v13 - v8));
  *(a1[5] + v8) = v6;
  v15 = *(a1 + 9);
  v16 = v15 + 1;
  *(a1 + 9) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 8);
        if (v36 <= v37)
        {
          v40 = a1[5];
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (a1[1])(*a1, v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v39;
          a1[5] = v40;
          v41 = *(a1 + 9);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = a1[5] + v16;
        *(v43 + 2) = BYTE2(v5);
        *v43 = v5;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          return result;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          v28 = a1[5];
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (a1[1])(*a1, v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v27;
          a1[5] = v28;
          v29 = *(a1 + 9);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(a1[5] + v16) = v5;
        v42 = 4;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
        return result;
      }

      v18 = v15 + 3;
      v19 = *(a1 + 8);
      if (v18 <= v19)
      {
        v22 = a1[5];
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (a1[1])(*a1, v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v21;
        a1[5] = v22;
        v23 = *(a1 + 9);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(a1[5] + v16) = v5;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 8);
      if (v30 <= v31)
      {
        v34 = a1[5];
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (a1[1])(*a1, v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v33;
        a1[5] = v34;
        v35 = *(a1 + 9);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(a1[5] + v16) = v5;
      v42 = 1;
    }

    *(a1 + 9) += v42;
  }

  return result;
}

uint64_t serialize_GLPSubroutineUniformObject(void *a1, unint64_t a2)
{
  result = serialize_pointer(a1, a2);
  if (result)
  {
    serialize_GLPString(a1, *a2, *(a2 + 8));
    v5 = *(a2 + 16);

    return serialize_GLPType(a1, v5);
  }

  return result;
}

uint64_t glpMakeCopyVarDeclFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1].n128_u64[0];
  glpMakeVariableDeclarationNode(a1, &v7, a3, a4, 0);
  v5 = v4;
  glpVariableDeclarationNodeSetType(v4, 0);
  glpVariableDeclarationNodeSetInitializer(v5, 0);
  return v5;
}

uint64_t glpMakeCopyFunctionDefinitionFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t *a4)
{
  v13 = *a2;
  v14 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v13, 0);
  v9 = v8;
  *a4 = v8;
  v13 = *a2;
  v14 = a2[1].n128_u64[0];
  glpMakeFunctionDefinitionNode(a1, &v13);
  v11 = v10;
  glpFunctionDefinitionNodeSetPrototype(v10, a3);
  glpFunctionDefinitionNodeSetBody(v11, v9);
  return v11;
}

uint64_t glpMakeCopyInAssignFragment(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  PrimitiveType = glpGetPrimitiveType(5u);
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  glpMakeConstantNode(a1, &v33, PrimitiveType, a9);
  v24 = v23;
  *a8 = v23;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  OffsetNode = glpMakeOffsetNode(a1, &v33);
  glpOffsetNodeSetBankIndex(OffsetNode, 0);
  glpOffsetNodeSetOffsetExpr(OffsetNode, v24);
  glpOffsetNodeSetVectorElementExpr(OffsetNode, 0);
  *a7 = OffsetNode;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  glpMakeLValueNode(a1, &v33, a4, a5, a6);
  v27 = v26;
  glpDerefNodeSetOffset(v26, OffsetNode);
  *a3 = v27;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  v28 = glpMakeOffsetNode(a1, &v33);
  glpOffsetNodeSetBankIndex(v28, 0);
  glpOffsetNodeSetOffsetExpr(v28, 0);
  glpOffsetNodeSetVectorElementExpr(v28, 0);
  *a14 = v28;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  glpMakeLValueNode(a1, &v33, a11, a12, a13);
  v30 = v29;
  glpDerefNodeSetOffset(v29, v28);
  *a10 = v30;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  AssignNode = glpMakeAssignNode(a1, &v33, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, v27);
  glpBinaryOperatorNodeSetRhs(AssignNode, v30);
  return AssignNode;
}

uint64_t glpMakeCopyOutAssignFragment(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t a14)
{
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  OffsetNode = glpMakeOffsetNode(a1, &v33);
  glpOffsetNodeSetBankIndex(OffsetNode, 0);
  glpOffsetNodeSetOffsetExpr(OffsetNode, 0);
  glpOffsetNodeSetVectorElementExpr(OffsetNode, 0);
  *a7 = OffsetNode;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  glpMakeLValueNode(a1, &v33, a4, a5, a6);
  v23 = v22;
  glpDerefNodeSetOffset(v22, OffsetNode);
  *a3 = v23;
  PrimitiveType = glpGetPrimitiveType(5u);
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  glpMakeConstantNode(a1, &v33, PrimitiveType, a14);
  v26 = v25;
  *a13 = v25;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  v27 = glpMakeOffsetNode(a1, &v33);
  glpOffsetNodeSetBankIndex(v27, 0);
  glpOffsetNodeSetOffsetExpr(v27, v26);
  glpOffsetNodeSetVectorElementExpr(v27, 0);
  *a12 = v27;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  glpMakeLValueNode(a1, &v33, a9, a10, a11);
  v29 = v28;
  glpDerefNodeSetOffset(v28, v27);
  *a8 = v29;
  v33 = *a2;
  v34 = a2[1].n128_u64[0];
  AssignNode = glpMakeAssignNode(a1, &v33, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, v23);
  glpBinaryOperatorNodeSetRhs(AssignNode, v29);
  return AssignNode;
}

uint64_t glpMakeVRLFunctionFragment(void *a1, __n128 *a2, uint64_t a3)
{
  v8 = *a2;
  v9 = a2[1].n128_u64[0];
  glpMakePPStreamOpNode(a1, &v8, 0, 121, 0, 0, 0);
  v6 = v5;
  glpCallNodeAddArg(a1, v5, a3);
  return v6;
}

uint64_t glpMakeStoreFragment(void *a1, __n128 *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t *a15, uint64_t a16)
{
  PrimitiveType = glpGetPrimitiveType(5u);
  v38 = *a2;
  v39 = a2[1].n128_u64[0];
  glpMakeConstantNode(a1, &v38, PrimitiveType, a5);
  v25 = v24;
  *a4 = v24;
  v38 = *a2;
  v39 = a2[1].n128_u64[0];
  glpMakeLValueNode(a1, &v38, a7, a8, a9);
  v27 = v26;
  glpDerefNodeSetOffset(v26, 0);
  *a6 = v27;
  v28 = glpGetPrimitiveType(5u);
  v38 = *a2;
  v39 = a2[1].n128_u64[0];
  glpMakeConstantNode(a1, &v38, v28, a16);
  v30 = v29;
  *a15 = v29;
  v38 = *a2;
  v39 = a2[1].n128_u64[0];
  OffsetNode = glpMakeOffsetNode(a1, &v38);
  glpOffsetNodeSetBankIndex(OffsetNode, 0);
  glpOffsetNodeSetOffsetExpr(OffsetNode, v30);
  glpOffsetNodeSetVectorElementExpr(OffsetNode, 0);
  *a14 = OffsetNode;
  v38 = *a2;
  v39 = a2[1].n128_u64[0];
  glpMakeLValueNode(a1, &v38, a11, a12, a13);
  v33 = v32;
  glpDerefNodeSetOffset(v32, OffsetNode);
  *a10 = v33;
  v38 = *a2;
  v39 = a2[1].n128_u64[0];
  glpMakePPStreamOpNode(a1, &v38, 0, 153, a3, 0, 0);
  v35 = v34;
  glpCallNodeAddArg(a1, v34, v25);
  glpCallNodeAddArg(a1, v35, v27);
  glpCallNodeAddArg(a1, v35, v33);
  return v35;
}

uint64_t glpMakeMainReturnFragment(void *a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *a2;
  v17 = a2[1].n128_u64[0];
  glpMakeRawCallNode(a1, &v16, a4, a5, a6);
  v10 = v9;
  *a3 = v9;
  v16 = *a2;
  v17 = a2[1].n128_u64[0];
  glpMakeReturnStatementNode(a1, &v16);
  v12 = v11;
  glpReturnStatementNodeSetExpr(v11, 0);
  v16 = *a2;
  v17 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v16, 0);
  v14 = v13;
  glpBlockNodeAddStatement(a1, v13, v10);
  glpBlockNodeAddStatement(a1, v14, v12);
  return v14;
}

uint64_t glpMakeIncrementFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  SaType = glpASTNodeGetSaType(a3);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  glpMakePrimitiveTypeNode(Allocator, &v23, ScalarType);
  v13 = v12;
  v14 = glpGetPrimitiveType(5u);
  IntConstant = glpCompilerGetIntConstant(a1, 1);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  glpMakeConstantNode(Allocator, &v23, v14, IntConstant);
  v17 = v16;
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  glpMakeConstructorCallNode(Allocator, &v23);
  v19 = v18;
  glpConstructorCallNodeSetType(v18, v13);
  glpCallNodeAddArg(Allocator, v19, v17);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  AddNode = glpMakeAddNode(Allocator, &v23);
  glpBinaryOperatorNodeSetLhs(AddNode, a4);
  glpBinaryOperatorNodeSetRhs(AddNode, v19);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  AssignNode = glpMakeAssignNode(Allocator, &v23, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, a3);
  glpBinaryOperatorNodeSetRhs(AssignNode, AddNode);
  return glpSANode(a1, AssignNode);
}

uint64_t glpMakeDecrementFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  SaType = glpASTNodeGetSaType(a3);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  glpMakePrimitiveTypeNode(Allocator, &v23, ScalarType);
  v13 = v12;
  v14 = glpGetPrimitiveType(5u);
  IntConstant = glpCompilerGetIntConstant(a1, 1);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  glpMakeConstantNode(Allocator, &v23, v14, IntConstant);
  v17 = v16;
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  glpMakeConstructorCallNode(Allocator, &v23);
  v19 = v18;
  glpConstructorCallNodeSetType(v18, v13);
  glpCallNodeAddArg(Allocator, v19, v17);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  SubtractNode = glpMakeSubtractNode(Allocator, &v23);
  glpBinaryOperatorNodeSetLhs(SubtractNode, a4);
  glpBinaryOperatorNodeSetRhs(SubtractNode, v19);
  v23 = *a2;
  v24 = a2[1].n128_u64[0];
  AssignNode = glpMakeAssignNode(Allocator, &v23, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, a3);
  glpBinaryOperatorNodeSetRhs(AssignNode, SubtractNode);
  return glpSANode(a1, AssignNode);
}

uint64_t glpMakeConstantValueFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  glpMakeConstantNode(Allocator, &v11, a3, a4);
  return glpSANode(a1, v9);
}

uint64_t glpMakeArrayIndexOffsetFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Allocator = glpCompilerGetAllocator(a1);
  PrimitiveType = glpGetPrimitiveType(5u);
  v17 = *a2;
  v18 = a2[1].n128_u64[0];
  glpMakeConstantNode(Allocator, &v17, PrimitiveType, a5);
  v13 = v12;
  v17 = *a2;
  v18 = a2[1].n128_u64[0];
  MultiplyNode = glpMakeMultiplyNode(Allocator, &v17);
  glpBinaryOperatorNodeSetLhs(MultiplyNode, a4);
  glpBinaryOperatorNodeSetRhs(MultiplyNode, v13);
  v17 = *a2;
  v18 = a2[1].n128_u64[0];
  AddNode = glpMakeAddNode(Allocator, &v17);
  glpBinaryOperatorNodeSetLhs(AddNode, a3);
  glpBinaryOperatorNodeSetRhs(AddNode, MultiplyNode);
  return glpSANode(a1, AddNode);
}

uint64_t glpMakeFieldOffsetFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  PrimitiveType = glpGetPrimitiveType(5u);
  v14 = *a2;
  v15 = a2[1].n128_u64[0];
  glpMakeConstantNode(Allocator, &v14, PrimitiveType, a4);
  v11 = v10;
  v14 = *a2;
  v15 = a2[1].n128_u64[0];
  AddNode = glpMakeAddNode(Allocator, &v14);
  glpBinaryOperatorNodeSetLhs(AddNode, a3);
  glpBinaryOperatorNodeSetRhs(AddNode, v11);
  return glpSANode(a1, AddNode);
}

uint64_t glpMakeIfExprFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Allocator = glpCompilerGetAllocator(a1);
  SaFlags = glpASTNodeGetSaFlags(a7);
  v17 = glpPrecisionQualifierFromSaFlags(SaFlags);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeKeywordQualifierNode(Allocator, &v42, v17);
  v19 = v18;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeQualifiedTypeNode(Allocator, &v42);
  v21 = v20;
  glpQualifiedTypeNodeSetType(v20, a5);
  glpQualifiedTypeNodeSetQualifiers(v21, v19);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeVariableDeclarationNode(Allocator, &v42, a3, a4, 0);
  v23 = v22;
  glpVariableDeclarationNodeSetType(v22, v21);
  glpVariableDeclarationNodeSetInitializer(v23, 0);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeVariableIdentifierNode(Allocator, &v42, a3, a4);
  v25 = v24;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  AssignNode = glpMakeAssignNode(Allocator, &v42, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, v25);
  glpBinaryOperatorNodeSetRhs(AssignNode, a7);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeBlockNode(Allocator, &v42, 0);
  v28 = v27;
  glpBlockNodeAddStatement(Allocator, v27, AssignNode);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeVariableIdentifierNode(Allocator, &v42, a3, a4);
  v30 = v29;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  v31 = glpMakeAssignNode(Allocator, &v42, 0);
  glpBinaryOperatorNodeSetLhs(v31, v30);
  glpBinaryOperatorNodeSetRhs(v31, a8);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeBlockNode(Allocator, &v42, 0);
  v33 = v32;
  glpBlockNodeAddStatement(Allocator, v32, v31);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeIfStatementNode(Allocator, &v42);
  v35 = v34;
  glpIfStatementNodeSetCond(v34, a6);
  glpIfStatementNodeSetIfStatement(v35, v28);
  glpIfStatementNodeSetElseStatement(v35, v33);
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeVariableIdentifierNode(Allocator, &v42, a3, a4);
  v37 = v36;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  glpMakeCommaExprNode(Allocator, &v42, 0);
  v39 = v38;
  glpCommaExprNodeAddExpr(Allocator, v38, v23);
  glpCommaExprNodeAddExpr(Allocator, v39, v35);
  glpCommaExprNodeAddExpr(Allocator, v39, v37);
  return glpSANode(a1, v39);
}

uint64_t glpMakeTypedVariableFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17 = *a2;
  v18 = a2[1].n128_u64[0];
  glpMakeTypeIdentifierNode(a1, &v17, "<<BUG: placeholder type still exists>>", 0x781A7BE300000026);
  v13 = v12;
  *a5 = v12;
  v17 = *a2;
  v18 = a2[1].n128_u64[0];
  glpMakeVariableDeclarationNode(a1, &v17, a3, a4, 0);
  v15 = v14;
  glpVariableDeclarationNodeSetType(v14, v13);
  glpVariableDeclarationNodeSetInitializer(v15, a6);
  return v15;
}

uint64_t glpMakeFieldAccessFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = a2[1].n128_u64[0];
  glpMakeFieldAccessNode(a1, &v9, a3, a4);
  v7 = v6;
  glpFieldAccessNodeSetStructure(v6, a5);
  return v7;
}

uint64_t glpMakeArrayAccessFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  PrimitiveType = glpGetPrimitiveType(5u);
  v14 = *a2;
  v15 = a2[1].n128_u64[0];
  glpMakeConstantNode(a1, &v14, PrimitiveType, a4);
  v10 = v9;
  v14 = *a2;
  v15 = a2[1].n128_u64[0];
  glpMakeArrayAccessNode(a1, &v14);
  v12 = v11;
  glpArrayAccessNodeSetArray(v11, a3);
  glpArrayAccessNodeSetElement(v12, v10);
  return v12;
}

uint64_t glpMakeAssignFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  AssignNode = glpMakeAssignNode(Allocator, &v11, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, a3);
  glpBinaryOperatorNodeSetRhs(AssignNode, a4);
  return glpSANode(a1, AssignNode);
}

uint64_t glpMakeEqualFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  EqualNode = glpMakeEqualNode(Allocator, &v11, 0);
  glpBinaryOperatorNodeSetLhs(EqualNode, a3);
  glpBinaryOperatorNodeSetRhs(EqualNode, a4);
  return glpSANode(a1, EqualNode);
}

uint64_t glpMakeNotEqualFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  NotEqualNode = glpMakeNotEqualNode(Allocator, &v11, 0);
  glpBinaryOperatorNodeSetLhs(NotEqualNode, a3);
  glpBinaryOperatorNodeSetRhs(NotEqualNode, a4);
  return glpSANode(a1, NotEqualNode);
}

uint64_t glpMakeLogicalAndFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  LogicalAndNode = glpMakeLogicalAndNode(Allocator, &v11);
  glpBinaryOperatorNodeSetLhs(LogicalAndNode, a3);
  glpBinaryOperatorNodeSetRhs(LogicalAndNode, a4);
  return glpSANode(a1, LogicalAndNode);
}

uint64_t glpMakeLogicalOrFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  LogicalOrNode = glpMakeLogicalOrNode(Allocator, &v11);
  glpBinaryOperatorNodeSetLhs(LogicalOrNode, a3);
  glpBinaryOperatorNodeSetRhs(LogicalOrNode, a4);
  return glpSANode(a1, LogicalOrNode);
}

uint64_t glpMakeAddFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  AddNode = glpMakeAddNode(Allocator, &v11);
  glpBinaryOperatorNodeSetLhs(AddNode, a3);
  glpBinaryOperatorNodeSetRhs(AddNode, a4);
  return glpSANode(a1, AddNode);
}

uint64_t glpMakeUnopFuncallFragment(void *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2[1].n128_u64[0];
  glpMakeFunctionCallNode(a1, &v10, a3, a4);
  v8 = v7;
  glpCallNodeAddArg(a1, v7, a5);
  return v8;
}

uint64_t glpMakeBinopFuncallFragment(void *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = a2[1].n128_u64[0];
  glpMakeFunctionCallNode(a1, &v12, a3, a4);
  v10 = v9;
  glpCallNodeAddArg(a1, v9, a5);
  glpCallNodeAddArg(a1, v10, a6);
  return v10;
}

uint64_t glpMakeSubroutineImplementationFragment(void *a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = *a2;
  v27 = a2[1].n128_u64[0];
  glpMakeFunctionPrototypeNode(a1, &v26, a4, a5);
  v16 = v15;
  glpFunctionPrototypeNodeSetReturnType(v15, 0);
  glpFunctionPrototypeNodeSetReturnOutParam(v16, 0);
  *a3 = v16;
  v26 = *a2;
  v27 = a2[1].n128_u64[0];
  glpMakeFunctionCallNode(a1, &v26, a9, a10);
  v18 = v17;
  *a7 = v17;
  v26 = *a2;
  v27 = a2[1].n128_u64[0];
  glpMakeReturnStatementNode(a1, &v26);
  v20 = v19;
  glpReturnStatementNodeSetExpr(v19, v18);
  v26 = *a2;
  v27 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v26, 0);
  v22 = v21;
  glpBlockNodeAddStatement(a1, v21, v20);
  *a6 = v22;
  v26 = *a2;
  v27 = a2[1].n128_u64[0];
  glpMakeFunctionDefinitionNode(a1, &v26);
  v24 = v23;
  glpFunctionDefinitionNodeSetPrototype(v23, v16);
  glpFunctionDefinitionNodeSetBody(v24, v22);
  return v24;
}

uint64_t glpMakeSubroutineParameterFragment(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1].n128_u64[0];
  glpMakeParameterDeclarationNode(a1, &v7, a3, a4);
  v5 = v4;
  glpParameterDeclarationNodeSetType(v4, 0);
  return v5;
}

uint64_t glpMakeWhileFragment(void *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v19 = *a2;
  v20 = a2[1].n128_u64[0];
  glpMakeLogicalNotNode(a1, &v19);
  v9 = v8;
  glpUnaryOperatorNodeSetExpr(v8, a3);
  v19 = *a2;
  v20 = a2[1].n128_u64[0];
  glpMakeBreakStatementNode(a1, &v19);
  v11 = v10;
  v19 = *a2;
  v20 = a2[1].n128_u64[0];
  glpMakeIfStatementNode(a1, &v19);
  v13 = v12;
  glpIfStatementNodeSetCond(v12, v9);
  glpIfStatementNodeSetIfStatement(v13, v11);
  glpIfStatementNodeSetElseStatement(v13, 0);
  v19 = *a2;
  v20 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v19, 1);
  v15 = v14;
  glpBlockNodeAddStatement(a1, v14, v13);
  glpBlockNodeAddStatement(a1, v15, a4);
  v19 = *a2;
  v20 = a2[1].n128_u64[0];
  glpMakeLoopStatementNode(a1, &v19);
  v17 = v16;
  glpLoopStatementNodeSetBody0(v16, v15);
  glpLoopStatementNodeSetBody1(v17, 0);
  return v17;
}

uint64_t glpMakeDoWhileFragment(void *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v21 = *a2;
  v22 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v21, 1);
  v9 = v8;
  glpBlockNodeAddStatement(a1, v8, a3);
  v21 = *a2;
  v22 = a2[1].n128_u64[0];
  glpMakeLogicalNotNode(a1, &v21);
  v11 = v10;
  glpUnaryOperatorNodeSetExpr(v10, a4);
  v21 = *a2;
  v22 = a2[1].n128_u64[0];
  glpMakeBreakStatementNode(a1, &v21);
  v13 = v12;
  v21 = *a2;
  v22 = a2[1].n128_u64[0];
  glpMakeIfStatementNode(a1, &v21);
  v15 = v14;
  glpIfStatementNodeSetCond(v14, v11);
  glpIfStatementNodeSetIfStatement(v15, v13);
  glpIfStatementNodeSetElseStatement(v15, 0);
  v21 = *a2;
  v22 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v21, 1);
  v17 = v16;
  glpBlockNodeAddStatement(a1, v16, v15);
  v21 = *a2;
  v22 = a2[1].n128_u64[0];
  glpMakeLoopStatementNode(a1, &v21);
  v19 = v18;
  glpLoopStatementNodeSetBody0(v18, v9);
  glpLoopStatementNodeSetBody1(v19, v17);
  return v19;
}

uint64_t glpMakeForFragment(void *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  glpMakeLogicalNotNode(a1, &v25);
  v13 = v12;
  glpUnaryOperatorNodeSetExpr(v12, a4);
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  glpMakeBreakStatementNode(a1, &v25);
  v15 = v14;
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  glpMakeIfStatementNode(a1, &v25);
  v17 = v16;
  glpIfStatementNodeSetCond(v16, v13);
  glpIfStatementNodeSetIfStatement(v17, v15);
  glpIfStatementNodeSetElseStatement(v17, 0);
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v25, 0);
  v19 = v18;
  glpBlockNodeAddStatement(a1, v18, v17);
  glpBlockNodeAddStatement(a1, v19, a5);
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  glpMakeLoopStatementNode(a1, &v25);
  v21 = v20;
  glpLoopStatementNodeSetBody0(v20, v19);
  glpLoopStatementNodeSetBody1(v21, a6);
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  glpMakeBlockNode(a1, &v25, 1);
  v23 = v22;
  glpBlockNodeAddStatement(a1, v22, a3);
  glpBlockNodeAddStatement(a1, v23, v21);
  return v23;
}

uint64_t glpDumpASTNodeToStringBuffer(uint64_t *a1, unint64_t a2)
{
  PointerHash = glpMakePointerHash(&GLP_MALLOC_ALLOCATOR);
  writeASTNode(PointerHash, a1, a2, 0, 1, v5, v6, v7, v15);
  glpStringBufferAppendFormat(a1, "\n", v8, v9, v10, v11, v12, v13, v16);

  return glpDestroyPointerHash(PointerHash);
}

uint64_t writeASTNode(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a4;
  if (a3 == -1)
  {
    if (a4)
    {
      v12 = "<<FAILED>>";
      do
      {
        glpStringBufferAppendFormat(a2, "    ", a3, a4, a5, a6, a7, a8, v47);
        LODWORD(v9) = v9 - 1;
      }

      while (v9);
    }

    else
    {
      v12 = "<<FAILED>>";
    }
  }

  else
  {
    if (!a3)
    {
      if (a4)
      {
        v12 = "NIL";
        do
        {
          glpStringBufferAppendFormat(a2, "    ", a3, a4, a5, a6, a7, a8, v47);
          LODWORD(v9) = v9 - 1;
        }

        while (v9);
      }

      else
      {
        v12 = "NIL";
      }

      goto LABEL_127;
    }

    v13 = a5;
    if (a1)
    {
      if (glpPointerHashGet(a1, a3))
      {
        if (v9)
        {
          v22 = v9;
          do
          {
            glpStringBufferAppendFormat(a2, "    ", v15, v16, v17, v18, v19, v20, v47);
            --v22;
          }

          while (v22);
          glpStringBufferAppendFormat(a2, "<<PREVIOUSLY VISITED:\n", v15, v16, v17, v18, v19, v20, v47);
          writeASTNode(0, a2, a3, (v9 + 1), 0);
          glpStringBufferAppendFormat(a2, "\n", v23, v24, v25, v26, v27, v28, v48);
          v12 = ">>\n";
          do
          {
            glpStringBufferAppendFormat(a2, "    ", a3, a4, a5, a6, a7, a8, v49);
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          goto LABEL_127;
        }

        glpStringBufferAppendFormat(a2, "<<PREVIOUSLY VISITED:\n", v15, v16, v17, v18, v19, v20, v47);
        writeASTNode(0, a2, a3, 1, 0);
        v12 = ">>\n";
        v42 = "\n";
LABEL_126:
        glpStringBufferAppendFormat(a2, v42, v36, v37, v38, v39, v40, v41, v47);
        goto LABEL_127;
      }

      glpPointerHashPut(a1, a3, 1, v21);
    }

    if (v9)
    {
      v29 = v9;
      do
      {
        glpStringBufferAppendFormat(a2, "    ", a3, a4, a5, a6, a7, a8, v47);
        --v29;
      }

      while (v29);
    }

    switch(glpASTNodeGetKind(a3))
    {
      case 0u:
        writeTypeConversion(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 1u:
        writeVariableIdentifier(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 2u:
        writeTypeIdentifier(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 3u:
        writeConstant(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 4u:
        writeArrayAccess(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 5u:
        writeFieldAccess(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 6u:
        writeUndeterminedCall(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 7u:
        writeFunctionCall(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 8u:
        writeSubroutineArrayCall(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 9u:
        writeMethodCall(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0xAu:
        writeConstructorCall(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0xBu:
        writePostincrement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0xCu:
        writePostdecrement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0xDu:
        writePreincrement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0xEu:
        writePredecrement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0xFu:
        writeUnaryPlus(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x10u:
        writeNegate(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x11u:
        writeLogicalNot(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x12u:
        writeBitwiseNot(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x13u:
        writeMultiply(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x14u:
        writeDivide(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x15u:
        writeModulo(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x16u:
        writeAdd(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x17u:
        writeSubtract(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x18u:
        writeShiftLeft(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x19u:
        writeShiftRight(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x1Au:
        writeLess(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x1Bu:
        writeLessEqual(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x1Cu:
        writeGreater(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x1Du:
        writeGreaterEqual(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x1Eu:
        writeEqual(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x1Fu:
        writeNotEqual(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x20u:
        writeLogicalAnd(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x21u:
        writeLogicalOr(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x22u:
        writeLogicalXor(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x23u:
        writeBitwiseAnd(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x24u:
        writeBitwiseOr(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x25u:
        writeBitwiseXor(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x26u:
        writeIfExpr(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x27u:
        writeAssign(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x28u:
        writeOpAssign(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x29u:
        writeReadInput(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x2Au:
        writeWriteOutput(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x2Bu:
        writeCommaExpr(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x2Cu:
        writeParameterDeclaration(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x2Du:
        writeFunctionPrototype(a2, a3, v9, v31, v32, v33, v34, v35, v47);
        break;
      case 0x2Eu:
        writeVariableDeclaration(a2, a3, v9, v31, v32, v33, v34, v35, v47);
        break;
      case 0x2Fu:
        writeVariableDeclarationGroup(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x30u:
        writePrecisionDeclaration(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x31u:
        writeQualifiedDeclaration(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x32u:
        writeQualifiedDeclarationGroup(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x33u:
        writeFunctionDefinition(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x34u:
        writeQualifiedType(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x35u:
        writePrimitiveType(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x36u:
        writeArrayType(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x37u:
        writeFieldDeclaration(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x38u:
        writeStructType(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x39u:
        writeInterfaceBlock(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x3Au:
        writeLayoutType(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x3Bu:
        writeKeywordQualifier(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x3Cu:
        writeLayoutQualifier(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x3Du:
        writeSubroutineTypeList(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x3Eu:
        writeQualifierList(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x3Fu:
        writeGlobalTypeQualifier(a2, a3, v9, v31, v32, v33, v34, v35, v47);
        break;
      case 0x40u:
        writeLayoutPair(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x41u:
        writeExpressionStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x42u:
        writeBlock(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x43u:
        writeIfStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x44u:
        writeLoopStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x45u:
        writeSwitchStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x46u:
        writeCaseStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x47u:
        writeDefaultStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x48u:
        writeBreakStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x49u:
        writeContinueStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x4Au:
        writeDiscardStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x4Bu:
        writeReturnStatement(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x4Cu:
        writeTopLevel(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x4Du:
        writeAvailabilityDeclaration(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x4Eu:
        writeRawCall(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x4Fu:
        writeSubroutineRawCall(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x50u:
        writeOffset(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x51u:
        writeLValue(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x52u:
        writeRValue(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x53u:
        writeIBPartialDeref(a2, a3, v30, v31, v32, v33, v34, v35, v47);
        break;
      case 0x54u:
        writePPStreamOp(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      case 0x55u:
        writeSubroutineUniform(a2, a3, v9, v31, v32, v33, v34, v35);
        break;
      default:
        abort();
    }

    if (!v13)
    {
      if (v9 == -1)
      {
        v12 = ")";
        v42 = "<<KIDS ELIDED TO AVOID RECURSION>>";
      }

      else
      {
        v45 = v9 + 1;
        v12 = ")";
        v42 = "<<KIDS ELIDED TO AVOID RECURSION>>";
        do
        {
          glpStringBufferAppendFormat(a2, "    ", v36, v37, v38, v39, v40, v41, v47);
          --v45;
        }

        while (v45);
      }

      goto LABEL_126;
    }

    if (glpASTNodeGetChildCount(a3))
    {
      v43 = 0;
      v12 = ")";
      do
      {
        if (v43)
        {
          glpStringBufferAppendFormat(a2, "\n", a3, a4, a5, a6, a7, a8, v47);
        }

        Child = glpASTNodeGetChild(a3, v43);
        writeASTNode(a1, a2, Child, (v9 + 1), 1);
        ++v43;
      }

      while (v43 < glpASTNodeGetChildCount(a3));
    }

    else
    {
      v12 = ")";
    }
  }

LABEL_127:

  return glpStringBufferAppendFormat(a2, v12, a3, a4, a5, a6, a7, a8, a9);
}

void *writeTypeConversion(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(TypeConversion:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  v24 = glpTypeConversionNodeGetToPrecision(a2);
  glpAppendFlagDescription(a1, v24);
  glpStringBufferAppendCString(a1, " ");
  v25 = glpTypeConversionNodeGetToType(a2);
  glpDumpTypeToStringBuffer(a1, v25, v26, v27, v28, v29, v30, v31, v35);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeVariableIdentifier(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(VariableIdentifier:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  glpVariableIdentifierNodeGetName(a2);
  v25 = v24;
  glpVariableIdentifierNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s -> ", v26, v27, v28, v29, v30, v31, v25);
}

uint64_t writeTypeIdentifier(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(TypeIdentifier:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  glpTypeIdentifierNodeGetName(a2);
  v25 = v24;
  glpTypeIdentifierNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s", v26, v27, v28, v29, v30, v31, v25);
}

void *writeConstant(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(Constant:", a3, a4, a5, a6, a7, a8, v27);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v28);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v29);
      --v23;
    }

    while (v23);
  }

  Type = glpConstantNodeGetType(a2);
  Value = glpConstantNodeGetValue(a2);

  return glpAppendValueDescriptionToStringBuffer(a1, Type, Value);
}