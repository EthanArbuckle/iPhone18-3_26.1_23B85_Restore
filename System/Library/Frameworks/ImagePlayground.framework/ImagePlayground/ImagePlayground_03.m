BOOL sub_1D2A682B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF8, &qword_1D2ACE600);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v53 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v52 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v14;
    v46 = (v5 + 8);
    v49 = *(v19 + 72);
    v50 = v4;
    while (1)
    {
      sub_1D2A71E10(v24, v21, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      sub_1D2A71E10(v25, v18, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v27 = *(v53 + 20);
      v28 = *(v51 + 48);
      sub_1D2A71E10(v21 + v27, v14, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      sub_1D2A71E10(v18 + v27, &v14[v28], type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      v29 = *v52;
      v30 = v50;
      v31 = (*v52)(v14, 2, v50);
      if (v31)
      {
        if (v31 == 1)
        {
          if (v29(&v14[v28], 2, v30) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v29(&v14[v28], 2, v30) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v14, v11, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
        if (v29(&v14[v28], 2, v30))
        {
          (*v46)(v11, v30);
LABEL_24:
          sub_1D2A2E61C(v14, &qword_1EC704BF8, &qword_1D2ACE600);
          break;
        }

        v32 = v11;
        v33 = v48;
        (*v44)(v48, &v14[v28], v30);
        v47 = sub_1D2AC5F74();
        v34 = v30;
        v35 = *v46;
        v36 = v33;
        v11 = v32;
        (*v46)(v36, v34);
        v35(v32, v34);
        v14 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1D2A71E78(v45, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      v37 = *(v53 + 24);
      v38 = v21 + v37;
      v39 = *(v21 + v37);
      v40 = (v18 + v37);
      if (v39 != *v40)
      {
        break;
      }

      v41 = v40[1];
      v42 = *(v38 + 1);
      sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
      result = v42 == v41;
      if (v42 == v41)
      {
        v25 += v49;
        v24 += v49;
        if (--v22)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
    sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A6880C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v45 = v2;
  v46 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    *v33 = v5[4];
    *&v33[16] = *(v5 + 10);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
    v10 = v6[3];
    v36 = v6[2];
    v37 = v10;
    *v38 = v6[4];
    *&v38[16] = *(v6 + 10);
    v11 = v6[1];
    v34 = *v6;
    v35 = v11;
    v12 = *v33 >> 61;
    v13 = v30;
    if ((*v33 >> 61) > 2)
    {
      if (v12 == 3)
      {
        if (*v38 >> 61 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 4)
        {
          if (*v38 >> 61 != 4)
          {
            return 0;
          }

          v16 = v35;
          v25 = v34;
          v26 = i;
          v17 = *(&v34 + 1);
          if (*(&v30 + 1))
          {
            v18 = *(&v30 + 1);
          }

          else
          {
            v13 = 0;
            v18 = 0xE000000000000000;
          }

          v28 = v29;
          sub_1D2A75E80(&v34, v27);
          sub_1D2A75E80(&v29, v27);

          MEMORY[0x1D38A7100](v13, v18);

          v19 = v28;
          if (*(&v16 + 1))
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          if (*(&v16 + 1))
          {
            v21 = *(&v16 + 1);
          }

          else
          {
            v21 = 0xE000000000000000;
          }

          *&v27[0] = v25;
          *(&v27[0] + 1) = v17;

          MEMORY[0x1D38A7100](v20, v21);

          if (v19 == v27[0])
          {

            sub_1D2A75EDC(&v34);
            sub_1D2A75EDC(&v29);
            i = v26;
          }

          else
          {
            v23 = sub_1D2AC7354();

            sub_1D2A75EDC(&v34);
            sub_1D2A75EDC(&v29);
            i = v26;
            if ((v23 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_39;
        }

        if (*v38 >> 61 != 5)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          if (*v38 >> 61 != 1)
          {
            return 0;
          }

          v14 = v35;
          if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
          {
            return 0;
          }

          sub_1D2A75E80(&v34, v27);
          sub_1D2A75E80(&v29, v27);
          v15 = sub_1D2A68BC0(v13, v14);
        }

        else
        {
          v39[0] = v29;
          v39[1] = v30;
          v39[2] = v31;
          v39[3] = v32;
          v40 = *v33 & 0x1FFFFFFFFFFFFFFFLL;
          v41 = *&v33[8];
          if (*v38 >> 61 != 2)
          {
            return 0;
          }

          v42[0] = v34;
          v42[1] = v35;
          v42[2] = v36;
          v42[3] = v37;
          v43 = *v38 & 0x1FFFFFFFFFFFFFFFLL;
          v44 = *&v38[8];
          sub_1D2A75E80(&v34, v27);
          sub_1D2A75E80(&v29, v27);
          v15 = sub_1D2AA9DE8(v39, v42);
        }

        v22 = v15;
        sub_1D2A75EDC(&v34);
        sub_1D2A75EDC(&v29);
        if ((v22 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (*v38 >> 61)
      {
        return 0;
      }
    }

    if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

BOOL sub_1D2A68BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF0, &unk_1D2AD8510);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v53 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity(0);
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v52 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v14;
    v46 = (v5 + 8);
    v49 = *(v19 + 72);
    v50 = v4;
    while (1)
    {
      sub_1D2A71E10(v24, v21, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
      sub_1D2A71E10(v25, v18, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v27 = *(v53 + 20);
      v28 = *(v51 + 48);
      sub_1D2A71E10(v21 + v27, v14, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
      sub_1D2A71E10(v18 + v27, &v14[v28], type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
      v29 = *v52;
      v30 = v50;
      v31 = (*v52)(v14, 2, v50);
      if (v31)
      {
        if (v31 == 1)
        {
          if (v29(&v14[v28], 2, v30) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v29(&v14[v28], 2, v30) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v14, v11, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
        if (v29(&v14[v28], 2, v30))
        {
          (*v46)(v11, v30);
LABEL_24:
          sub_1D2A2E61C(v14, &qword_1EC704BF0, &unk_1D2AD8510);
          break;
        }

        v32 = v11;
        v33 = v48;
        (*v44)(v48, &v14[v28], v30);
        v47 = sub_1D2AC5F74();
        v34 = v30;
        v35 = *v46;
        v36 = v33;
        v11 = v32;
        (*v46)(v36, v34);
        v35(v32, v34);
        v14 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1D2A71E78(v45, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
      v37 = *(v53 + 24);
      v38 = v21 + v37;
      v39 = *(v21 + v37);
      v40 = (v18 + v37);
      if (v39 != *v40)
      {
        break;
      }

      v41 = v40[1];
      v42 = *(v38 + 1);
      sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
      sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
      result = v42 == v41;
      if (v42 == v41)
      {
        v25 += v49;
        v24 += v49;
        if (--v22)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
    sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A69118(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v45 = v2;
  v46 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    *v33 = v5[4];
    *&v33[16] = *(v5 + 10);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
    v10 = v6[3];
    v36 = v6[2];
    v37 = v10;
    *v38 = v6[4];
    *&v38[16] = *(v6 + 10);
    v11 = v6[1];
    v34 = *v6;
    v35 = v11;
    v12 = *v33 >> 61;
    v13 = v30;
    if ((*v33 >> 61) > 2)
    {
      if (v12 == 3)
      {
        if (*v38 >> 61 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 4)
        {
          if (*v38 >> 61 != 4)
          {
            return 0;
          }

          v16 = v35;
          v25 = v34;
          v26 = i;
          v17 = *(&v34 + 1);
          if (*(&v30 + 1))
          {
            v18 = *(&v30 + 1);
          }

          else
          {
            v13 = 0;
            v18 = 0xE000000000000000;
          }

          v28 = v29;
          sub_1D2A75DD0(&v34, v27);
          sub_1D2A75DD0(&v29, v27);

          MEMORY[0x1D38A7100](v13, v18);

          v19 = v28;
          if (*(&v16 + 1))
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          if (*(&v16 + 1))
          {
            v21 = *(&v16 + 1);
          }

          else
          {
            v21 = 0xE000000000000000;
          }

          *&v27[0] = v25;
          *(&v27[0] + 1) = v17;

          MEMORY[0x1D38A7100](v20, v21);

          if (v19 == v27[0])
          {

            sub_1D2A75E2C(&v34);
            sub_1D2A75E2C(&v29);
            i = v26;
          }

          else
          {
            v23 = sub_1D2AC7354();

            sub_1D2A75E2C(&v34);
            sub_1D2A75E2C(&v29);
            i = v26;
            if ((v23 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_39;
        }

        if (*v38 >> 61 != 5)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          if (*v38 >> 61 != 1)
          {
            return 0;
          }

          v14 = v35;
          if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
          {
            return 0;
          }

          sub_1D2A75DD0(&v34, v27);
          sub_1D2A75DD0(&v29, v27);
          v15 = sub_1D2A694CC(v13, v14);
        }

        else
        {
          v39[0] = v29;
          v39[1] = v30;
          v39[2] = v31;
          v39[3] = v32;
          v40 = *v33 & 0x1FFFFFFFFFFFFFFFLL;
          v41 = *&v33[8];
          if (*v38 >> 61 != 2)
          {
            return 0;
          }

          v42[0] = v34;
          v42[1] = v35;
          v42[2] = v36;
          v42[3] = v37;
          v43 = *v38 & 0x1FFFFFFFFFFFFFFFLL;
          v44 = *&v38[8];
          sub_1D2A75DD0(&v34, v27);
          sub_1D2A75DD0(&v29, v27);
          v15 = sub_1D2A97508(v39, v42);
        }

        v22 = v15;
        sub_1D2A75E2C(&v34);
        sub_1D2A75E2C(&v29);
        if ((v22 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (*v38 >> 61)
      {
        return 0;
      }
    }

    if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

BOOL sub_1D2A694CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BE8, &unk_1D2ACE5F0);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v53 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity(0);
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v52 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v14;
    v46 = (v5 + 8);
    v49 = *(v19 + 72);
    v50 = v4;
    while (1)
    {
      sub_1D2A71E10(v24, v21, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
      sub_1D2A71E10(v25, v18, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v27 = *(v53 + 20);
      v28 = *(v51 + 48);
      sub_1D2A71E10(v21 + v27, v14, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
      sub_1D2A71E10(v18 + v27, &v14[v28], type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
      v29 = *v52;
      v30 = v50;
      v31 = (*v52)(v14, 2, v50);
      if (v31)
      {
        if (v31 == 1)
        {
          if (v29(&v14[v28], 2, v30) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v29(&v14[v28], 2, v30) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v14, v11, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
        if (v29(&v14[v28], 2, v30))
        {
          (*v46)(v11, v30);
LABEL_24:
          sub_1D2A2E61C(v14, &qword_1EC704BE8, &unk_1D2ACE5F0);
          break;
        }

        v32 = v11;
        v33 = v48;
        (*v44)(v48, &v14[v28], v30);
        v47 = sub_1D2AC5F74();
        v34 = v30;
        v35 = *v46;
        v36 = v33;
        v11 = v32;
        (*v46)(v36, v34);
        v35(v32, v34);
        v14 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1D2A71E78(v45, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
      v37 = *(v53 + 24);
      v38 = v21 + v37;
      v39 = *(v21 + v37);
      v40 = (v18 + v37);
      if (v39 != *v40)
      {
        break;
      }

      v41 = v40[1];
      v42 = *(v38 + 1);
      sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
      sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
      result = v42 == v41;
      if (v42 == v41)
      {
        v25 += v49;
        v24 += v49;
        if (--v22)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
    sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A69A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v38 = v2;
  v39 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[2];
    v9 = v5[4];
    *&v21[32] = v5[3];
    *v22 = v9;
    *&v22[16] = *(v5 + 10);
    v10 = v5[1];
    v20 = *v5;
    *v21 = v10;
    *&v21[16] = v8;
    v11 = v6[3];
    v25 = v6[2];
    v26 = v11;
    *v27 = v6[4];
    *&v27[16] = *(v6 + 10);
    v12 = v6[1];
    v23 = *v6;
    v24 = v12;
    v13 = v9 >> 61;
    if ((v9 >> 61) > 2)
    {
      if (v13 == 3)
      {
        if (*v27 >> 61 != 3)
        {
          return 0;
        }
      }

      else if (v13 == 4)
      {
        if (*v27 >> 61 != 4)
        {
          return 0;
        }
      }

      else if (*v27 >> 61 != 5)
      {
        return 0;
      }
    }

    else
    {
      if (v13)
      {
        v14 = *v21;
        if (v13 == 1)
        {
          if (*v27 >> 61 != 1)
          {
            return 0;
          }

          v15 = v24;
          if (v20 != v23 && (sub_1D2AC7354() & 1) == 0)
          {
            return 0;
          }

          sub_1D2A75D20(&v23, v19);
          sub_1D2A75D20(&v20, v19);
          v16 = sub_1D2A69C9C(v14, v15);
        }

        else
        {
          v28 = v20;
          v30 = *&v21[8];
          v31 = *&v21[24];
          v29 = *v21;
          v32 = *&v21[40];
          v33 = *v22 & 0x1FFFFFFFFFFFFFFFLL;
          v34 = *&v22[8];
          if (*v27 >> 61 != 2)
          {
            return 0;
          }

          v35[0] = v23;
          v35[1] = v24;
          v35[2] = v25;
          v35[3] = v26;
          v36 = *v27 & 0x1FFFFFFFFFFFFFFFLL;
          v37 = *&v27[8];
          sub_1D2A75D20(&v23, v19);
          sub_1D2A75D20(&v20, v19);
          v16 = sub_1D2A97508(&v28, v35);
        }

        v17 = v16;
        sub_1D2A75D7C(&v23);
        sub_1D2A75D7C(&v20);
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_27;
      }

      if (*v27 >> 61)
      {
        return 0;
      }
    }

    if (v20 != v23 && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }

LABEL_27:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

BOOL sub_1D2A69C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BE0, &unk_1D2AD3B60);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v53 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity(0);
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v52 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v14;
    v46 = (v5 + 8);
    v49 = *(v19 + 72);
    v50 = v4;
    while (1)
    {
      sub_1D2A71E10(v24, v21, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
      sub_1D2A71E10(v25, v18, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v27 = *(v53 + 20);
      v28 = *(v51 + 48);
      sub_1D2A71E10(v21 + v27, v14, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
      sub_1D2A71E10(v18 + v27, &v14[v28], type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
      v29 = *v52;
      v30 = v50;
      v31 = (*v52)(v14, 2, v50);
      if (v31)
      {
        if (v31 == 1)
        {
          if (v29(&v14[v28], 2, v30) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v29(&v14[v28], 2, v30) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v14, v11, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
        if (v29(&v14[v28], 2, v30))
        {
          (*v46)(v11, v30);
LABEL_24:
          sub_1D2A2E61C(v14, &qword_1EC704BE0, &unk_1D2AD3B60);
          break;
        }

        v32 = v11;
        v33 = v48;
        (*v44)(v48, &v14[v28], v30);
        v47 = sub_1D2AC5F74();
        v34 = v30;
        v35 = *v46;
        v36 = v33;
        v11 = v32;
        (*v46)(v36, v34);
        v35(v32, v34);
        v14 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1D2A71E78(v45, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
      v37 = *(v53 + 24);
      v38 = v21 + v37;
      v39 = *(v21 + v37);
      v40 = (v18 + v37);
      if (v39 != *v40)
      {
        break;
      }

      v41 = v40[1];
      v42 = *(v38 + 1);
      sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
      sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
      result = v42 == v41;
      if (v42 == v41)
      {
        v25 += v49;
        v24 += v49;
        if (--v22)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
    sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A6A1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5EF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1D2A71CA4(&qword_1EC704BD8, MEMORY[0x1E6968FB0]);
    v22 = sub_1D2AC6BC4();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2A6A408()
{
  if (*v0)
  {
    result = 0x7365697469746E65;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_1D2A6A440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D2A6A518(uint64_t a1)
{
  v2 = sub_1D2A71ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6A554(uint64_t a1)
{
  v2 = sub_1D2A71ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.Prompt.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046D8, &qword_1D2ACBAB8);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71ED8();
  sub_1D2AC74A4();
  v17 = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046E8, &qword_1D2ACBAC0);
    sub_1D2A71F2C(&qword_1EC7046F0, &qword_1EC7046F8);
    sub_1D2AC7304();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t GenerationRecipe_V7.Prompt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704700, &qword_1D2ACBAC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71ED8();
  sub_1D2AC7494();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v11 = sub_1D2AC7234();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046E8, &qword_1D2ACBAC0);
  v18 = 1;
  sub_1D2A71F2C(&qword_1EC704708, &qword_1EC704710);
  sub_1D2AC7264();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL sub_1D2A6A9FC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A66CD8(v2, v3);
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.AssignmentOptions.id.getter()
{
  if (*v0)
  {
    result = 0x69646E656C426F6ELL;
  }

  else
  {
    result = 0x646E656C62;
  }

  *v0;
  return result;
}

uint64_t sub_1D2A6AAC4(uint64_t a1)
{
  v2 = sub_1D2A72070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6AB00(uint64_t a1)
{
  v2 = sub_1D2A72070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6AB3C()
{
  if (*v0)
  {
    result = 0x69646E656C426F6ELL;
  }

  else
  {
    result = 0x646E656C62;
  }

  *v0;
  return result;
}

uint64_t sub_1D2A6AB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E656C62 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69646E656C426F6ELL && a2 == 0xEA0000000000676ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D2A6AC58(uint64_t a1)
{
  v2 = sub_1D2A71FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6AC94(uint64_t a1)
{
  v2 = sub_1D2A71FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6ACD0(uint64_t a1)
{
  v2 = sub_1D2A7201C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6AD0C(uint64_t a1)
{
  v2 = sub_1D2A7201C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.AssignmentOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704718, &qword_1D2ACBAD0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704720, &qword_1D2ACBAD8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704728, &qword_1D2ACBAE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71FC8();
  sub_1D2AC74A4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D2A7201C();
    v18 = v22;
    sub_1D2AC7294();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D2A72070();
    sub_1D2AC7294();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.AssignmentOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.AssignmentOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704748, &qword_1D2ACBAE8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704750, &qword_1D2ACBAF0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704758, &qword_1D2ACBAF8);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71FC8();
  v17 = v37;
  sub_1D2AC7494();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1D2AC7284();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1D2AC70B4();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
    *v25 = &type metadata for GenerationRecipe_V7.DrawOnImageRecipe.AssignmentOptions;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1D2A7201C();
    sub_1D2AC71E4();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1D2A72070();
    sub_1D2AC71E4();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

void sub_1D2A6B4F0(uint64_t *a1@<X8>)
{
  v2 = 0x646E656C62;
  if (*v1)
  {
    v2 = 0x69646E656C426F6ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t GenerationRecipe_V7.DrawOnImageRecipe.SanitizationCategory.id.getter()
{
  v1 = 0x6E6153746F4E6F64;
  v2 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D2A6B5D4()
{
  v1 = 0x6E6153746F4E6F64;
  v2 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2A6B664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A75354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A6B698(uint64_t a1)
{
  v2 = sub_1D2A720C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6B6D4(uint64_t a1)
{
  v2 = sub_1D2A720C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6B710(uint64_t a1)
{
  v2 = sub_1D2A72214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6B74C(uint64_t a1)
{
  v2 = sub_1D2A72214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6B788(uint64_t a1)
{
  v2 = sub_1D2A7216C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6B7C4(uint64_t a1)
{
  v2 = sub_1D2A7216C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6B800(uint64_t a1)
{
  v2 = sub_1D2A72118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6B83C(uint64_t a1)
{
  v2 = sub_1D2A72118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6B878(uint64_t a1)
{
  v2 = sub_1D2A721C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6B8B4(uint64_t a1)
{
  v2 = sub_1D2A721C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.SanitizationCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704760, &qword_1D2ACBB00);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704768, &qword_1D2ACBB08);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704770, &qword_1D2ACBB10);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704778, &qword_1D2ACBB18);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704780, &qword_1D2ACBB20);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A720C4();
  sub_1D2AC74A4();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D2A7216C();
      v24 = v33;
      sub_1D2AC7294();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D2A72118();
      v24 = v36;
      sub_1D2AC7294();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D2A721C0();
    v24 = v30;
    sub_1D2AC7294();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D2A72214();
  sub_1D2AC7294();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.SanitizationCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.SanitizationCategory.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7047B0, &qword_1D2ACBB28);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7047B8, &qword_1D2ACBB30);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7047C0, &qword_1D2ACBB38);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7047C8, &qword_1D2ACBB40);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7047D0, &qword_1D2ACBB48);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D2A720C4();
  v23 = v55;
  sub_1D2AC7494();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_1D2AC7284();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_1D2AC70B4();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v33 = &type metadata for GenerationRecipe_V7.DrawOnImageRecipe.SanitizationCategory;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_1D2A721C0();
          v39 = v44;
          sub_1D2AC71E4();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_1D2A72214();
          v35 = v44;
          sub_1D2AC71E4();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_0(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_1D2A7216C();
        v38 = v44;
        sub_1D2AC71E4();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_1D2A72118();
        v40 = v44;
        sub_1D2AC71E4();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v56);
}

void sub_1D2A6C450(unint64_t *a1@<X8>)
{
  v2 = 0xED0000657A697469;
  v3 = 0x6E6153746F4E6F64;
  v4 = 0x80000001D2ADF510;
  v5 = 0xD000000000000019;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x80000001D2ADF4F0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000018;
    v2 = 0x80000001D2ADF530;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.baseImageData.getter()
{
  v1 = *v0;
  sub_1D2A479A0(*v0, *(v0 + 8));
  return v1;
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.sketchImageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479A0(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.sketchMaskData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.id.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

unint64_t sub_1D2A6C63C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x67616D4965736162;
    v5 = 0x614D686374656B73;
    if (a1 != 2)
    {
      v5 = 0x67616D4965736162;
    }

    if (a1)
    {
      v4 = 0x6D49686374656B73;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    if (a1 != 7)
    {
      v1 = 25705;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000018;
    if (a1 == 4)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D2A6C778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A754CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A6C7AC(uint64_t a1)
{
  v2 = sub_1D2A72268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6C7E8(uint64_t a1)
{
  v2 = sub_1D2A72268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7047D8, &qword_1D2ACBB50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v10;
  v11 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v11;
  v13 = *(v1 + 48);
  v12 = *(v1 + 56);
  v30 = *(v1 + 64);
  LODWORD(v11) = *(v1 + 65);
  v21 = *(v1 + 66);
  v22 = v11;
  v14 = *(v1 + 80);
  v20[0] = *(v1 + 72);
  v20[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A479A0(v8, v9);
  sub_1D2A72268();
  sub_1D2AC74A4();
  v28 = v8;
  v29 = v9;
  v31 = 0;
  sub_1D2A722BC();
  v16 = v27;
  sub_1D2AC72C4();
  if (v16)
  {
    sub_1D2A47930(v28, v29);
  }

  else
  {
    v18 = v23;
    v17 = v24;
    sub_1D2A47930(v28, v29);
    v28 = v26;
    v29 = v25;
    v31 = 1;
    sub_1D2A479A0(v26, v25);
    sub_1D2AC72C4();
    sub_1D2A47930(v28, v29);
    v28 = v17;
    v29 = v18;
    v31 = 2;
    sub_1D2A479A0(v17, v18);
    sub_1D2AC72C4();
    sub_1D2A47930(v28, v29);
    LOBYTE(v28) = 3;
    sub_1D2AC72F4();
    LOBYTE(v28) = 4;
    sub_1D2AC72F4();
    LOBYTE(v28) = 5;
    sub_1D2AC72E4();
    LOBYTE(v28) = v22;
    v31 = 6;
    sub_1D2A72310();
    sub_1D2AC7304();
    LOBYTE(v28) = v21;
    v31 = 7;
    sub_1D2A72364();
    sub_1D2AC7304();
    LOBYTE(v28) = 8;
    sub_1D2AC72D4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704800, &qword_1D2ACBB58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = sub_1D2AC5F94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v58 = v15;
  (*(v11 + 8))(v14, v10);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A72268();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v39 = v45[0];
    LOBYTE(v40[0]) = 1;
    sub_1D2AC7224();
    v38 = v45[0];
    LOBYTE(v40[0]) = 2;
    sub_1D2AC7224();
    v37 = v45[0];
    LOBYTE(v45[0]) = 3;
    sub_1D2AC7254();
    v18 = v17;
    LOBYTE(v45[0]) = 4;
    sub_1D2AC7254();
    v20 = v19;
    LOBYTE(v45[0]) = 5;
    v21 = sub_1D2AC7244();
    LOBYTE(v40[0]) = 6;
    sub_1D2A7240C();
    sub_1D2AC7264();
    v22 = v45[0];
    LOBYTE(v40[0]) = 7;
    sub_1D2A72460();
    sub_1D2AC7264();
    v36 = LOBYTE(v45[0]);
    v55 = 8;
    v23 = sub_1D2AC7234();
    v35 = v24;
    v25 = v23;
    LOBYTE(v21) = v21 & 1;
    (*(v6 + 8))(v9, v5);

    v28 = v39;
    v26 = v28 >> 64;
    v27 = v28;
    v40[0] = v39;
    v40[1] = v38;
    v41 = v37;
    *&v42 = v18;
    *(&v42 + 1) = v20;
    LOBYTE(v43) = v21;
    BYTE1(v43) = v22;
    BYTE2(v43) = v36;
    *(&v43 + 3) = v56;
    BYTE7(v43) = v57;
    v29 = v35;
    *(&v43 + 1) = v25;
    v44 = v35;
    v30 = v38;
    *a2 = v39;
    *(a2 + 16) = v30;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    *(a2 + 80) = v29;
    *(a2 + 48) = v32;
    *(a2 + 64) = v33;
    *(a2 + 32) = v31;
    sub_1D2A724B4(v40, v45);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v45[0] = __PAIR128__(v26, v27);
    v45[1] = v38;
    v45[2] = v37;
    v46 = v18;
    v47 = v20;
    v48 = v21;
    v49 = v22;
    v50 = v36;
    v51 = v56;
    v52 = v57;
    v53 = v25;
    v54 = v29;
    return sub_1D2A724EC(v45);
  }
}

uint64_t sub_1D2A6D268@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t GenerationRecipe_V7.ImportedImage.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationRecipe_V7.ImportedImage.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenerationRecipe_V7.ImportedImage.imageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479A0(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V7.ImportedImage.imageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47930(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static GenerationRecipe_V7.ImportedImage.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2AC7354();
  }
}

uint64_t GenerationRecipe_V7.ImportedImage.init(id:imageData:hasPerson:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = sub_1D2A47930(0, 0xF000000000000000);
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1D2A6D434()
{
  v1 = 0x7461446567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6F73726550736168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D2A6D488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A757C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A6D4B0(uint64_t a1)
{
  v2 = sub_1D2A7251C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6D4EC(uint64_t a1)
{
  v2 = sub_1D2A7251C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.ImportedImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704820, &qword_1D2ACBB60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v20 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A7251C();
  sub_1D2AC74A4();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_1D2AC72D4();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v21 = 1;
    sub_1D2A479A0(v16, v15);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v18, v19);
    LOBYTE(v18) = 2;
    sub_1D2AC72E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V7.ImportedImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704830, &qword_1D2ACBB68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A7251C();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v20 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v23) = 0;
    v11 = sub_1D2AC7234();
    v14 = v13;
    v21 = v11;
    v25 = 1;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v15 = v24;
    v22 = v23;
    sub_1D2A47930(0, 0xF000000000000000);
    LOBYTE(v23) = 2;
    v17 = sub_1D2AC7244();
    (*(v6 + 8))(v9, v5);
    v18 = v17 & 1;
    v19 = v22;
    *a2 = v21;
    *(a2 + 8) = v14;
    *(a2 + 16) = v19;
    *(a2 + 24) = v15;
    *(a2 + 32) = v18;

    sub_1D2A479A0(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(a1);

    v20 = v19;
    v16 = v15;
  }

  return sub_1D2A47930(v20, v16);
}

uint64_t sub_1D2A6D9BC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2AC7354();
  }
}

uint64_t GenerationRecipe_V7.PersonData.id.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v5 = *v0;
  v6 = v0[1];

  MEMORY[0x1D38A7100](v2, v3);

  return v5;
}

uint64_t GenerationRecipe_V7.PersonData.personID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationRecipe_V7.PersonData.personID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenerationRecipe_V7.PersonData.faceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GenerationRecipe_V7.PersonData.faceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GenerationRecipe_V7.PersonData.faceImageData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V7.PersonData.faceImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47930(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t GenerationRecipe_V7.PersonData.init(personID:faceID:faceImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  result = sub_1D2A47930(0, 0xF000000000000000);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1D2A6DC4C()
{
  v1 = 0x444965636166;
  if (*v0 != 1)
  {
    v1 = 0x67616D4965636166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496E6F73726570;
  }
}

uint64_t sub_1D2A6DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A758E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A6DCD8(uint64_t a1)
{
  v2 = sub_1D2A72570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6DD14(uint64_t a1)
{
  v2 = sub_1D2A72570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.PersonData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704838, &qword_1D2ACBB70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A72570();
  sub_1D2AC74A4();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_1D2AC72D4();
  if (!v13)
  {
    v16 = v18;
    v15 = v19;
    LOBYTE(v23) = 1;
    sub_1D2AC72A4();
    v23 = v15;
    v24 = v16;
    v25 = 2;
    sub_1D2A479A0(v15, v16);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V7.PersonData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704848, &qword_1D2ACBB78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A72570();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v21 = 0;
    v22 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_1D2AC7234();
    v14 = v13;
    v24 = v11;
    LOBYTE(v25) = 1;
    v15 = sub_1D2AC7204();
    v17 = v16;
    v23 = v15;
    v27 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v9, v5);
    v18 = v25;
    v19 = v26;
    sub_1D2A47930(0, 0xF000000000000000);
    v20 = v23;
    *a2 = v24;
    a2[1] = v14;
    a2[2] = v20;
    a2[3] = v17;
    a2[4] = v18;
    a2[5] = v19;

    sub_1D2A479A0(v18, v19);
    __swift_destroy_boxed_opaque_existential_0(a1);

    v21 = v18;
    v22 = v19;
  }

  return sub_1D2A47930(v21, v22);
}

uint64_t sub_1D2A6E234@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (v1[3])
  {
    v5 = v1[2];
    v6 = v1[3];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = *v1;

  MEMORY[0x1D38A7100](v5, v6);

  *a1 = v8;
  a1[1] = v4;
  return result;
}

uint64_t GenerationRecipe_V7.StyleData.id.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v5 = *v0;
  v6 = v0[1];

  MEMORY[0x1D38A7100](v2, v3);

  return v5;
}

uint64_t GenerationRecipe_V7.StyleData.styleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationRecipe_V7.StyleData.styleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenerationRecipe_V7.StyleData.modelVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t GenerationRecipe_V7.StyleData.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall GenerationRecipe_V7.StyleData.init(styleID:isExternal:modelVersion:)(ImagePlayground::GenerationRecipe_V7::StyleData *__return_ptr retstr, Swift::String styleID, Swift::Bool isExternal, Swift::String_optional modelVersion)
{
  retstr->styleID = styleID;
  retstr->isExternal = isExternal;
  retstr->modelVersion = modelVersion;
}

uint64_t sub_1D2A6E490()
{
  v1 = 0x6E72657478457369;
  if (*v0 != 1)
  {
    v1 = 0x7265566C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C797473;
  }
}

uint64_t sub_1D2A6E4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A759FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A6E520(uint64_t a1)
{
  v2 = sub_1D2A725C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6E55C(uint64_t a1)
{
  v2 = sub_1D2A725C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.StyleData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704850, &qword_1D2ACBB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v15 = *(v1 + 16);
  v10 = v1[3];
  v14[1] = v1[4];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A725C4();
  sub_1D2AC74A4();
  v18 = 0;
  v12 = v14[3];
  sub_1D2AC72D4();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1D2AC72E4();
  v16 = 2;
  sub_1D2AC72A4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V7.StyleData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704860, &qword_1D2ACBB88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A725C4();
  sub_1D2AC7494();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v11 = sub_1D2AC7234();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_1D2AC7244();
  v23 = 2;
  v15 = sub_1D2AC7204();
  v18 = v17;
  v22 &= 1u;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21;
  *(a2 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2A6E9CC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v1 + 16))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v7 = *v1;
  v8 = v1[1];

  MEMORY[0x1D38A7100](v4, v5);

  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t GenerationRecipe_V7.Ingredient.id.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[8] >> 61;
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      v2 = v0[9];
      v4 = v0[10];
    }

    goto LABEL_13;
  }

  if (v3 == 3)
  {
LABEL_13:

    return v2;
  }

  v5 = v0[2];
  if (v3 == 4)
  {
    v6 = v0[3];
    if (v6)
    {
      v7 = v0[2];
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = v0[3];
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v10 = *v0;
    v11 = v0[1];
  }

  else
  {
    if (v5)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v5)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v10 = *v0;
    v12 = v0[1];
  }

  MEMORY[0x1D38A7100](v7, v8);

  return v10;
}

BOOL GenerationRecipe_V7.Ingredient.containsPhoto.getter()
{
  v1 = v0[8] >> 61;
  if (v1 == 2)
  {
    v3 = v0[1];
    if (v3 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v4 = *v0;
      v5 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v4 + 16);
          v7 = *(v4 + 24);
        }

        else
        {
          sub_1D2A47930(v4, v0[1]);
          v7 = 0;
          v6 = 0;
        }
      }

      else if (v5)
      {
        v6 = v4;
        v7 = v4 >> 32;
      }

      else
      {
        sub_1D2A47930(v4, v0[1]);
        v6 = 0;
        v7 = BYTE6(v3);
      }

      return v6 != v7;
    }
  }

  else
  {
    return v1 == 4 || v1 == 3;
  }
}

uint64_t sub_1D2A6EC1C()
{
  v1 = *v0;
  v2 = 0x5064657461727563;
  v3 = 0x646574726F706D69;
  v4 = 0x6E6F73726570;
  if (v1 != 4)
  {
    v4 = 0x656C797473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74706D6F7270;
  if (v1 != 1)
  {
    v5 = 0x676E6977617264;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2A6ECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A75B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A6ED18(uint64_t a1)
{
  v2 = sub_1D2A72618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6ED54(uint64_t a1)
{
  v2 = sub_1D2A72618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6ED90(uint64_t a1)
{
  v2 = sub_1D2A729B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6EDCC(uint64_t a1)
{
  v2 = sub_1D2A729B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6EE08(uint64_t a1)
{
  v2 = sub_1D2A72864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6EE44(uint64_t a1)
{
  v2 = sub_1D2A72864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6EE80(uint64_t a1)
{
  v2 = sub_1D2A727BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6EEBC(uint64_t a1)
{
  v2 = sub_1D2A727BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6EEF8(uint64_t a1)
{
  v2 = sub_1D2A72714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6EF34(uint64_t a1)
{
  v2 = sub_1D2A72714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6EF70(uint64_t a1)
{
  v2 = sub_1D2A7290C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6EFAC(uint64_t a1)
{
  v2 = sub_1D2A7290C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6EFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2AC7354();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2A6F068(uint64_t a1)
{
  v2 = sub_1D2A7266C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A6F0A4(uint64_t a1)
{
  v2 = sub_1D2A7266C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.Ingredient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704868, &qword_1D2ACBB90);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v40 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704870, &qword_1D2ACBB98);
  v55 = *(v56 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v40 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704878, &qword_1D2ACBBA0);
  v52 = *(v53 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v40 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704880, &qword_1D2ACBBA8);
  v50 = *(v51 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v40 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704888, &qword_1D2ACBBB0);
  v46 = *(v47 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704890, &qword_1D2ACBBB8);
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704898, &qword_1D2ACBBC0);
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - v20;
  v22 = v1[1];
  v65 = *v1;
  v66 = v22;
  v64 = *(v1 + 16);
  v23 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v24 = v1[3];
  v63 = *(v1 + 32);
  v61 = *(v1 + 33) | ((*(v1 + 37) | (*(v1 + 39) << 16)) << 32);
  v62 = v24;
  v25 = v1[6];
  v60 = v1[5];
  v43 = v25;
  v26 = v1[8];
  v42 = v1[7];
  v27 = v1[10];
  v41 = v1[9];
  v40 = v27;
  v28 = a1[3];
  v29 = a1[4];
  v30 = a1;
  v31 = v21;
  __swift_project_boxed_opaque_existential_1(v30, v28);
  sub_1D2A72618();
  sub_1D2AC74A4();
  v32 = v26 >> 61;
  if ((v26 >> 61) > 2)
  {
    if (v32 == 3)
    {
      LOBYTE(v68) = 3;
      sub_1D2A727BC();
      v34 = v49;
      sub_1D2AC7294();
      v68 = v65;
      v69 = v66;
      LOBYTE(v70) = v64;
      HIBYTE(v70) = BYTE6(v23);
      *(&v70 + 5) = WORD2(v23);
      *(&v70 + 1) = v23;
      v71 = v62;
      v72 = v63 & 1;
      sub_1D2A72810();
      v35 = v53;
      sub_1D2AC7304();
      v36 = &v83;
    }

    else
    {
      if (v32 != 4)
      {
        LOBYTE(v68) = 5;
        sub_1D2A7266C();
        v34 = v57;
        sub_1D2AC7294();
        v68 = v65;
        v69 = v66;
        LOBYTE(v70) = v64 & 1;
        v71 = v62;
        v72 = v63;
        v75 = BYTE6(v61);
        v74 = WORD2(v61);
        v73 = v61;
        sub_1D2A726C0();
        v35 = v59;
        sub_1D2AC7304();
        v39 = v58;
        goto LABEL_12;
      }

      LOBYTE(v68) = 4;
      sub_1D2A72714();
      v34 = v54;
      sub_1D2AC7294();
      v68 = v65;
      v69 = v66;
      LOBYTE(v70) = v64;
      HIBYTE(v70) = BYTE6(v23);
      *(&v70 + 5) = WORD2(v23);
      *(&v70 + 1) = v23;
      v71 = v62;
      v72 = v63;
      v75 = BYTE6(v61);
      v74 = WORD2(v61);
      v73 = v61;
      v76 = v60;
      sub_1D2A72768();
      v35 = v56;
      sub_1D2AC7304();
      v36 = &v84;
    }
  }

  else
  {
    if (!v32)
    {
      LOBYTE(v68) = 0;
      sub_1D2A729B4();
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v44 + 8))(v17, v14);
      return (*(v67 + 8))(v31, v18);
    }

    if (v32 == 1)
    {
      v33 = v64 | (v23 << 8);
      LOBYTE(v68) = 1;
      sub_1D2A7290C();
      v34 = v45;
      sub_1D2AC7294();
      v68 = v65;
      v69 = v66;
      v70 = v33;
      sub_1D2A72960();
      v35 = v47;
      sub_1D2AC7304();
      v36 = &v81;
    }

    else
    {
      v38 = v26 & 0x1FFFFFFFFFFFFFFFLL;
      LOBYTE(v68) = 2;
      sub_1D2A72864();
      v34 = v48;
      sub_1D2AC7294();
      v68 = v65;
      v69 = v66;
      LOBYTE(v70) = v64;
      HIBYTE(v70) = BYTE6(v23);
      *(&v70 + 5) = WORD2(v23);
      *(&v70 + 1) = v23;
      v71 = v62;
      v72 = v63;
      v75 = BYTE6(v61);
      v74 = WORD2(v61);
      v73 = v61;
      v76 = v60;
      v77 = v43;
      v78 = v42;
      v79 = v38;
      v80 = v41;
      v81 = v40;
      sub_1D2A728B8();
      v35 = v51;
      sub_1D2AC7304();
      v36 = &v82;
    }
  }

  v39 = *(v36 - 32);
LABEL_12:
  (*(v39 + 8))(v34, v35);
  return (*(v67 + 8))(v31, v18);
}

uint64_t GenerationRecipe_V7.Ingredient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704900, &qword_1D2ACBBC8);
  v81 = *(v78 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704908, &qword_1D2ACBBD0);
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v68 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704910, &qword_1D2ACBBD8);
  v77 = *(v74 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v85 = &v68 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704918, &qword_1D2ACBBE0);
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v84 = &v68 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704920, &qword_1D2ACBBE8);
  v72 = *(v73 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704928, &qword_1D2ACBBF0);
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704930, &qword_1D2ACBBF8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D2A72618();
  v27 = v87;
  sub_1D2AC7494();
  if (!v27)
  {
    v68 = v16;
    v69 = 0;
    v28 = v15;
    v30 = v84;
    v29 = v85;
    v31 = v86;
    v70 = v21;
    v87 = v20;
    v32 = sub_1D2AC7284();
    if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 6))
    {
      v38 = sub_1D2AC70B4();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v40 = &type metadata for GenerationRecipe_V7.Ingredient;
      v42 = v87;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
    }

    else
    {
      if (*(v32 + 32) > 2u)
      {
        if (v33 == 3)
        {
          LOBYTE(v88) = 3;
          sub_1D2A727BC();
          v50 = v87;
          v51 = v69;
          sub_1D2AC71E4();
          if (v51)
          {
            (*(v70 + 8))(v24, v50);
            goto LABEL_11;
          }

          sub_1D2A72AB0();
          v56 = v74;
          sub_1D2AC7264();
          (*(v77 + 8))(v29, v56);
          (*(v70 + 8))(v24, v50);
          swift_unknownObjectRelease();
          v63 = v88;
          v62 = v89;
          v64 = v90;
          v65 = v91;
          *&v67 = v92;
          v66 = 0x6000000000000000;
          goto LABEL_28;
        }

        v44 = v83;
        v42 = v87;
        v45 = v69;
        if (v33 == 4)
        {
          LOBYTE(v88) = 4;
          sub_1D2A72714();
          v46 = v82;
          sub_1D2AC71E4();
          if (v45)
          {
            goto LABEL_10;
          }

          v85 = v24;
          sub_1D2A72A5C();
          v47 = v79;
          sub_1D2AC7264();
          (*(v80 + 8))(v46, v47);
          (*(v70 + 8))(v85, v42);
          swift_unknownObjectRelease();
          v63 = v88;
          v62 = v89;
          v64 = v90;
          v65 = v91;
          v66 = 0x8000000000000000;
          v67 = v92;
        }

        else
        {
          LOBYTE(v88) = 5;
          sub_1D2A7266C();
          sub_1D2AC71E4();
          if (v45)
          {
            goto LABEL_10;
          }

          v85 = v24;
          sub_1D2A72A08();
          v55 = v78;
          sub_1D2AC7264();
          (*(v81 + 8))(v31, v55);
          (*(v70 + 8))(v85, v42);
          swift_unknownObjectRelease();
          v63 = v88;
          v62 = v89;
          v64 = v90;
          v65 = v91;
          v66 = 0xA000000000000000;
          *&v67 = v92;
        }

LABEL_29:
        *v44 = v63;
        *(v44 + 8) = v62;
        *(v44 + 16) = v64;
        *(v44 + 24) = v65;
        *(v44 + 32) = v67;
        *(v44 + 48) = v60;
        *(v44 + 64) = v66;
        *(v44 + 72) = v61;
        return __swift_destroy_boxed_opaque_existential_0(v96);
      }

      if (*(v32 + 32))
      {
        if (v33 == 1)
        {
          LOBYTE(v88) = 1;
          sub_1D2A7290C();
          v34 = v87;
          v35 = v69;
          sub_1D2AC71E4();
          v36 = v24;
          v37 = v70;
          if (v35)
          {
            (*(v70 + 8))(v36, v34);
LABEL_11:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v96);
          }

          sub_1D2A72B58();
          v57 = v73;
          sub_1D2AC7264();
          (*(v72 + 8))(v28, v57);
          (*(v37 + 8))(v36, v34);
          swift_unknownObjectRelease();
          v63 = v88;
          v62 = v89;
          v66 = 0x2000000000000000;
          v64 = v90;
        }

        else
        {
          LOBYTE(v88) = 2;
          sub_1D2A72864();
          v52 = v87;
          v53 = v69;
          sub_1D2AC71E4();
          v54 = v70;
          if (v53)
          {
            (*(v70 + 8))(v24, v52);
            goto LABEL_11;
          }

          sub_1D2A72B04();
          v58 = v76;
          sub_1D2AC7264();
          (*(v75 + 8))(v30, v58);
          (*(v54 + 8))(v24, v87);
          swift_unknownObjectRelease();
          v63 = v88;
          v62 = v89;
          v64 = v90;
          v65 = v91;
          v67 = v92;
          v60 = v93;
          v61 = v95;
          v66 = v94 & 0x10301 | 0x4000000000000000;
        }

        goto LABEL_28;
      }

      LOBYTE(v88) = 0;
      sub_1D2A729B4();
      v42 = v87;
      v48 = v69;
      sub_1D2AC71E4();
      if (!v48)
      {
        v49 = v68;
        v63 = sub_1D2AC7234();
        v62 = v59;
        (*(v71 + 8))(v19, v49);
        (*(v70 + 8))(v24, v42);
        swift_unknownObjectRelease();
        v66 = 0;
LABEL_28:
        v44 = v83;
        goto LABEL_29;
      }
    }

LABEL_10:
    (*(v70 + 8))(v24, v42);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0(v96);
}

uint64_t sub_1D2A70644@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V7.Ingredient.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t GenerationRecipe_V7.id.getter()
{
  v1 = *v0;
  v22 = 0;
  v23 = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (v2)
  {
    for (i = (v1 + 32); ; i = (i + 88))
    {
      v4 = i[1];
      v16 = *i;
      v17 = v4;
      v5 = i[2];
      v6 = *(i + 10);
      v7 = i[4];
      v19 = i[3];
      v20 = v7;
      v21 = v6;
      v18 = v5;
      v8 = *(&v16 + 1);
      v9 = v16;
      v10 = v7 >> 61;
      if ((v7 >> 61) > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            if (*(&v17 + 1))
            {
              v11 = (*(&v17 + 1) << 8) | ((*(&v17 + 5) | (BYTE7(v17) << 16)) << 40) | v17;
            }

            else
            {
              v11 = 0;
            }

            if (*(&v17 + 1))
            {
              v12 = *(&v17 + 1);
            }

            else
            {
              v12 = 0xE000000000000000;
            }

            v15 = v16;
            sub_1D2A72BAC(&v16, v14);
          }

          else
          {
            if (v17)
            {
              v11 = 1702195828;
            }

            else
            {
              v11 = 0x65736C6166;
            }

            if (v17)
            {
              v12 = 0xE400000000000000;
            }

            else
            {
              v12 = 0xE500000000000000;
            }

            v15 = v16;
            sub_1D2A72BAC(&v16, v14);
          }

          MEMORY[0x1D38A7100](v11, v12);

          v8 = *(&v15 + 1);
          v9 = v15;
          goto LABEL_4;
        }
      }

      else if (v10 >= 2)
      {
        v9 = *(&v20 + 1);
        v8 = v21;
      }

      sub_1D2A72BAC(&v16, v14);

LABEL_4:
      MEMORY[0x1D38A7100](v9, v8);
      sub_1D2A72BE4(&v16);

      if (!--v2)
      {
        return v22;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2A708B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2AC7354();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2A70940(uint64_t a1)
{
  v2 = sub_1D2A72C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7097C(uint64_t a1)
{
  v2 = sub_1D2A72C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704960, &qword_1D2ACBC00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A72C14();

  sub_1D2AC74A4();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704970, &qword_1D2ACBC08);
  sub_1D2A72CBC(&qword_1EC704978, sub_1D2A72C68);
  sub_1D2AC7304();

  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V7.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704988, &qword_1D2ACBC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A72C14();
  sub_1D2AC7494();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704970, &qword_1D2ACBC08);
    sub_1D2A72CBC(&qword_1EC704990, sub_1D2A72D34);
    sub_1D2AC7264();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2A70D9C@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V7.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V7V06DrawOnaD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 65);
  v12 = *(a1 + 66);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v22 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 65);
  v25 = *(a2 + 66);
  v26 = *(a2 + 72);
  v27 = *(a2 + 80);
  if (v3 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      v46 = *(a2 + 32);
      v47 = v6;
      v44 = *(a2 + 64);
      v45 = v10;
      v42 = *(a2 + 65);
      v43 = v11;
      v48 = v7;
      v40 = *(a2 + 66);
      v41 = v12;
      v36 = *(a2 + 80);
      v37 = *(a2 + 72);
      v38 = v14;
      v39 = v13;
      sub_1D2A479A0(v2, v3);
      sub_1D2A479A0(v16, v15);
      sub_1D2A47930(v2, v3);
      goto LABEL_7;
    }

LABEL_5:
    sub_1D2A479A0(v2, v3);
    sub_1D2A479A0(v16, v15);
    sub_1D2A47930(v2, v3);
    v28 = v16;
    v29 = v15;
LABEL_18:
    sub_1D2A47930(v28, v29);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v46 = *(a2 + 32);
  v47 = v6;
  v44 = *(a2 + 64);
  v45 = v10;
  v42 = *(a2 + 65);
  v43 = v11;
  v48 = v7;
  v40 = *(a2 + 66);
  v41 = v12;
  v36 = *(a2 + 80);
  v37 = *(a2 + 72);
  v38 = v14;
  v39 = v13;
  sub_1D2A479A0(v2, v3);
  sub_1D2A479A0(v16, v15);
  v30 = sub_1D2A973A0(v2, v3, v16, v15);
  sub_1D2A47930(v16, v15);
  sub_1D2A47930(v2, v3);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  if (v4 >> 60 == 15)
  {
    if (v18 >> 60 == 15)
    {
      sub_1D2A479A0(v5, v4);
      sub_1D2A479A0(v17, v18);
      sub_1D2A47930(v5, v4);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v18 >> 60 == 15)
  {
LABEL_11:
    sub_1D2A479A0(v5, v4);
    sub_1D2A479A0(v17, v18);
    sub_1D2A47930(v5, v4);
    v28 = v17;
    v29 = v18;
    goto LABEL_18;
  }

  sub_1D2A479A0(v5, v4);
  sub_1D2A479A0(v17, v18);
  v31 = sub_1D2A973A0(v5, v4, v17, v18);
  sub_1D2A47930(v17, v18);
  sub_1D2A47930(v5, v4);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if (v48 >> 60 != 15)
  {
    v32 = v47;
    if (v20 >> 60 != 15)
    {
      sub_1D2A479A0(v47, v48);
      sub_1D2A479A0(v46, v20);
      v35 = sub_1D2A973A0(v47, v48, v46, v20);
      sub_1D2A47930(v46, v20);
      sub_1D2A47930(v47, v48);
      result = 0;
      if ((v35 & 1) == 0)
      {
        return result;
      }

      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v32 = v47;
  if (v20 >> 60 != 15)
  {
LABEL_17:
    v34 = v32;
    sub_1D2A479A0(v32, v48);
    sub_1D2A479A0(v46, v20);
    sub_1D2A47930(v34, v48);
    v28 = v46;
    v29 = v20;
    goto LABEL_18;
  }

  sub_1D2A479A0(v47, v48);
  sub_1D2A479A0(v46, v20);
  sub_1D2A47930(v47, v48);
  result = 0;
LABEL_22:
  if (v9 == v22 && v8 == v21 && ((v45 ^ v44) & 1) == 0 && v43 == v42 && ((v41 ^ v40) & 1) == 0)
  {
    if (v39 == v37 && v38 == v36)
    {
      return 1;
    }

    else
    {

      return sub_1D2AC7354();
    }
  }

  return result;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V7V10PersonDataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  if (a1[3])
  {
    v9 = a1[2];
    v10 = a1[3];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v15 = v4;
  v16 = v3;

  MEMORY[0x1D38A7100](v9, v10);

  if (v7)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1D38A7100](v11, v12);

  if (v15 == v6 && v16 == v5)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D2AC7354();
  }

  return v13 & 1;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V7V9StyleDataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(a1 + 16))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v12 = *a1;
  v13 = a1[1];

  MEMORY[0x1D38A7100](v5, v6);

  v7 = v4 == 0;
  if (v4)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1D38A7100](v8, v9);

  if (v12 == v3 && v13 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2AC7354();
  }

  return v10 & 1;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V7V10IngredientO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *v40 = a1[2];
  *&v40[16] = v2;
  v4 = a1[3];
  *v41 = a1[4];
  v5 = a1[1];
  v38 = *a1;
  v39 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v43[1] = a2[2];
  v44 = v6;
  v8 = a2[3];
  *v45 = a2[4];
  v9 = a2[1];
  v42 = *a2;
  v43[0] = v9;
  v46[2] = *v40;
  v46[3] = v4;
  v46[4] = a1[4];
  v46[0] = v38;
  v46[1] = v3;
  v52 = a2[4];
  v51 = v8;
  v50 = v43[1];
  v48 = v42;
  *&v41[16] = *(a1 + 10);
  *&v45[16] = *(a2 + 10);
  v10 = *(a2 + 10);
  v47 = *(a1 + 10);
  v53 = v10;
  v49 = v7;
  v11 = v5;
  v12 = (v5 >> 8) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32);
  v13 = *v41 >> 61;
  if ((*v41 >> 61) > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 4)
      {
        if (*v45 >> 61 != 4)
        {
          goto LABEL_23;
        }

        v21 = v38;
        LOBYTE(v22) = v5;
        *(&v22 + 1) = v5 >> 8;
        BYTE7(v22) = (*(&v22 + 1) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
        *(&v22 + 5) = DWORD1(v5) >> 8;
        *(&v22 + 1) = *(&v39 + 1);
        v23 = *v40;
        v19 = v42;
        *v20 = v43[0];
        *&v20[16] = v43[1];
        sub_1D2A72BAC(&v42, &v27);
        sub_1D2A72BAC(&v38, &v27);
        sub_1D2A72BAC(&v42, &v27);
        sub_1D2A72BAC(&v38, &v27);
        v17 = _s15ImagePlayground19GenerationRecipe_V7V10PersonDataV2eeoiySbAE_AEtFZ_0(&v21, &v19);
      }

      else
      {
        if (*v45 >> 61 != 5)
        {
          goto LABEL_23;
        }

        v21 = v38;
        LOBYTE(v22) = v5 & 1;
        *(&v22 + 1) = *(&v39 + 1);
        *&v23 = *v40;
        v19 = v42;
        v20[0] = v43[0] & 1;
        *&v20[8] = *(v43 + 8);
        sub_1D2A72BAC(&v42, &v27);
        sub_1D2A72BAC(&v38, &v27);
        sub_1D2A72BAC(&v42, &v27);
        sub_1D2A72BAC(&v38, &v27);
        v17 = _s15ImagePlayground19GenerationRecipe_V7V9StyleDataV2eeoiySbAE_AEtFZ_0(&v21, &v19);
      }

      goto LABEL_22;
    }

    if (*v45 >> 61 != 3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v13)
    {
      if (v13 == 1)
      {
        if (*v45 >> 61 == 1)
        {
          v14 = *&v43[0];
          if (v38 == v42 || (sub_1D2AC7354() & 1) != 0)
          {
            sub_1D2A72BAC(&v42, &v27);
            sub_1D2A72BAC(&v38, &v27);
            sub_1D2A72BAC(&v42, &v27);
            sub_1D2A72BAC(&v38, &v27);
            v15 = sub_1D2A66CD8(v11 | (v12 << 8), v14);
            sub_1D2A2E61C(v46, &qword_1EC704C10, &qword_1D2ACE618);
            sub_1D2A72BE4(&v42);
            sub_1D2A72BE4(&v38);
            if (v15)
            {
              v16 = 1;
              return v16 & 1;
            }

LABEL_24:
            v16 = 0;
            return v16 & 1;
          }
        }

LABEL_23:
        sub_1D2A72BAC(&v42, &v27);
        sub_1D2A72BAC(&v38, &v27);
        sub_1D2A2E61C(v46, &qword_1EC704C10, &qword_1D2ACE618);
        goto LABEL_24;
      }

      if (*v45 >> 61 != 2)
      {
        goto LABEL_23;
      }

      v27 = v38;
      v28 = v5;
      v29 = v5 >> 8;
      v31 = (v29 | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
      v30 = DWORD1(v5) >> 8;
      v32 = *(&v39 + 1);
      v33 = *v40;
      v34 = *&v40[8];
      v35 = *&v40[24];
      v36 = *v41 & 0x1FFFFFFFFFFFFFFFLL;
      v37 = *&v41[8];
      v21 = v42;
      v22 = v43[0];
      v23 = v43[1];
      v24 = v44;
      v25 = *v45 & 0x1FFFFFFFFFFFFFFFLL;
      v26 = *&v45[8];
      sub_1D2A72BAC(&v42, &v19);
      sub_1D2A72BAC(&v38, &v19);
      sub_1D2A72BAC(&v42, &v19);
      sub_1D2A72BAC(&v38, &v19);
      v17 = _s15ImagePlayground19GenerationRecipe_V7V06DrawOnaD0V2eeoiySbAE_AEtFZ_0(&v27, &v21);
LABEL_22:
      v16 = v17;
      sub_1D2A2E61C(v46, &qword_1EC704C10, &qword_1D2ACE618);
      sub_1D2A72BE4(&v42);
      sub_1D2A72BE4(&v38);
      return v16 & 1;
    }

    if (*v45 >> 61)
    {
      goto LABEL_23;
    }
  }

  if (v38 == v42)
  {
    sub_1D2A72BAC(&v42, &v27);
    sub_1D2A72BAC(&v38, &v27);
    sub_1D2A2E61C(v46, &qword_1EC704C10, &qword_1D2ACE618);
    v16 = 1;
  }

  else
  {
    v16 = sub_1D2AC7354();
    sub_1D2A72BAC(&v42, &v27);
    sub_1D2A72BAC(&v38, &v27);
    sub_1D2A2E61C(v46, &qword_1EC704C10, &qword_1D2ACE618);
  }

  return v16 & 1;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V7V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704690, &qword_1D2ACBA98);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D2A71E10(a1, &v24 - v16, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  sub_1D2A71E10(a2, &v17[v18], type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_1D2A71E10(v17, v12, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_1D2AC5F74();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2A2E61C(v17, &qword_1EC704690, &qword_1D2ACBA98);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D2A71E78(v17, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  v21 = 1;
  return v21 & 1;
}

unint64_t sub_1D2A71B54()
{
  result = qword_1EC704638;
  if (!qword_1EC704638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704638);
  }

  return result;
}

unint64_t sub_1D2A71BA8()
{
  result = qword_1EC704640;
  if (!qword_1EC704640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704640);
  }

  return result;
}

unint64_t sub_1D2A71BFC()
{
  result = qword_1EC704650;
  if (!qword_1EC704650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704650);
  }

  return result;
}

unint64_t sub_1D2A71C50()
{
  result = qword_1EC704658;
  if (!qword_1EC704658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704658);
  }

  return result;
}

uint64_t sub_1D2A71CA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2A71CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2A71D50()
{
  result = qword_1EC7046A0;
  if (!qword_1EC7046A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7046A0);
  }

  return result;
}

uint64_t sub_1D2A71DA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2A71E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A71E78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2A71ED8()
{
  result = qword_1EC7046E0;
  if (!qword_1EC7046E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7046E0);
  }

  return result;
}

uint64_t sub_1D2A71F2C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7046E8, &qword_1D2ACBAC0);
    sub_1D2A71CA4(a2, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A71FC8()
{
  result = qword_1EC704730;
  if (!qword_1EC704730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704730);
  }

  return result;
}

unint64_t sub_1D2A7201C()
{
  result = qword_1EC704738;
  if (!qword_1EC704738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704738);
  }

  return result;
}

unint64_t sub_1D2A72070()
{
  result = qword_1EC704740;
  if (!qword_1EC704740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704740);
  }

  return result;
}

unint64_t sub_1D2A720C4()
{
  result = qword_1EC704788;
  if (!qword_1EC704788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704788);
  }

  return result;
}

unint64_t sub_1D2A72118()
{
  result = qword_1EC704790;
  if (!qword_1EC704790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704790);
  }

  return result;
}

unint64_t sub_1D2A7216C()
{
  result = qword_1EC704798;
  if (!qword_1EC704798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704798);
  }

  return result;
}

unint64_t sub_1D2A721C0()
{
  result = qword_1EC7047A0;
  if (!qword_1EC7047A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7047A0);
  }

  return result;
}

unint64_t sub_1D2A72214()
{
  result = qword_1EC7047A8;
  if (!qword_1EC7047A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7047A8);
  }

  return result;
}

unint64_t sub_1D2A72268()
{
  result = qword_1EC7047E0;
  if (!qword_1EC7047E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7047E0);
  }

  return result;
}

unint64_t sub_1D2A722BC()
{
  result = qword_1EC7047E8;
  if (!qword_1EC7047E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7047E8);
  }

  return result;
}

unint64_t sub_1D2A72310()
{
  result = qword_1EC7047F0;
  if (!qword_1EC7047F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7047F0);
  }

  return result;
}

unint64_t sub_1D2A72364()
{
  result = qword_1EC7047F8;
  if (!qword_1EC7047F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7047F8);
  }

  return result;
}

unint64_t sub_1D2A723B8()
{
  result = qword_1EC704808;
  if (!qword_1EC704808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704808);
  }

  return result;
}

unint64_t sub_1D2A7240C()
{
  result = qword_1EC704810;
  if (!qword_1EC704810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704810);
  }

  return result;
}

unint64_t sub_1D2A72460()
{
  result = qword_1EC704818;
  if (!qword_1EC704818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704818);
  }

  return result;
}

unint64_t sub_1D2A7251C()
{
  result = qword_1EC704828;
  if (!qword_1EC704828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704828);
  }

  return result;
}

unint64_t sub_1D2A72570()
{
  result = qword_1EC704840;
  if (!qword_1EC704840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704840);
  }

  return result;
}

unint64_t sub_1D2A725C4()
{
  result = qword_1EC704858;
  if (!qword_1EC704858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704858);
  }

  return result;
}

unint64_t sub_1D2A72618()
{
  result = qword_1EC7048A0;
  if (!qword_1EC7048A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048A0);
  }

  return result;
}

unint64_t sub_1D2A7266C()
{
  result = qword_1EC7048A8;
  if (!qword_1EC7048A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048A8);
  }

  return result;
}

unint64_t sub_1D2A726C0()
{
  result = qword_1EC7048B0;
  if (!qword_1EC7048B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048B0);
  }

  return result;
}

unint64_t sub_1D2A72714()
{
  result = qword_1EC7048B8;
  if (!qword_1EC7048B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048B8);
  }

  return result;
}

unint64_t sub_1D2A72768()
{
  result = qword_1EC7048C0;
  if (!qword_1EC7048C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048C0);
  }

  return result;
}

unint64_t sub_1D2A727BC()
{
  result = qword_1EC7048C8;
  if (!qword_1EC7048C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048C8);
  }

  return result;
}

unint64_t sub_1D2A72810()
{
  result = qword_1EC7048D0;
  if (!qword_1EC7048D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048D0);
  }

  return result;
}

unint64_t sub_1D2A72864()
{
  result = qword_1EC7048D8;
  if (!qword_1EC7048D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048D8);
  }

  return result;
}

unint64_t sub_1D2A728B8()
{
  result = qword_1EC7048E0;
  if (!qword_1EC7048E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048E0);
  }

  return result;
}

unint64_t sub_1D2A7290C()
{
  result = qword_1EC7048E8;
  if (!qword_1EC7048E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048E8);
  }

  return result;
}

unint64_t sub_1D2A72960()
{
  result = qword_1EC7048F0;
  if (!qword_1EC7048F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048F0);
  }

  return result;
}

unint64_t sub_1D2A729B4()
{
  result = qword_1EC7048F8;
  if (!qword_1EC7048F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7048F8);
  }

  return result;
}

unint64_t sub_1D2A72A08()
{
  result = qword_1EC704938;
  if (!qword_1EC704938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704938);
  }

  return result;
}

unint64_t sub_1D2A72A5C()
{
  result = qword_1EC704940;
  if (!qword_1EC704940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704940);
  }

  return result;
}

unint64_t sub_1D2A72AB0()
{
  result = qword_1EC704948;
  if (!qword_1EC704948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704948);
  }

  return result;
}

unint64_t sub_1D2A72B04()
{
  result = qword_1EC704950;
  if (!qword_1EC704950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704950);
  }

  return result;
}

unint64_t sub_1D2A72B58()
{
  result = qword_1EC704958;
  if (!qword_1EC704958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704958);
  }

  return result;
}

unint64_t sub_1D2A72C14()
{
  result = qword_1EC704968;
  if (!qword_1EC704968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704968);
  }

  return result;
}

unint64_t sub_1D2A72C68()
{
  result = qword_1EC704980;
  if (!qword_1EC704980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704980);
  }

  return result;
}

uint64_t sub_1D2A72CBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704970, &qword_1D2ACBC08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A72D34()
{
  result = qword_1EC704998;
  if (!qword_1EC704998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704998);
  }

  return result;
}

unint64_t sub_1D2A72D8C()
{
  result = qword_1EC7049A0;
  if (!qword_1EC7049A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049A0);
  }

  return result;
}

unint64_t sub_1D2A72DE4()
{
  result = qword_1EC7049A8;
  if (!qword_1EC7049A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049A8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D2A72E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2A72EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D2A72F1C()
{
  type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D2A72FB0()
{
  if (!qword_1EE088880)
  {
    v0 = sub_1D2AC6E44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE088880);
    }
  }
}

uint64_t sub_1D2A73030()
{
  v0 = sub_1D2AC5F94();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D2A730F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2A73138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2A731D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2A73218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D2A73280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2A732C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2A73338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2A73380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2A733E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 3) & 0x1F80 | (*(a1 + 64) >> 1) | (*(a1 + 64) >> 4) & 0xFFFFE000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D2A73448(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = (8 * -a2) & 0xFC00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF00001FFFFLL | ((-a2 >> 13) << 17);
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerationRecipe_V7.Ingredient.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerationRecipe_V7.Ingredient.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSupport.PartnerAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceSupport.PartnerAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2A73920()
{
  result = qword_1EC7049B0;
  if (!qword_1EC7049B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049B0);
  }

  return result;
}

unint64_t sub_1D2A73978()
{
  result = qword_1EC7049B8;
  if (!qword_1EC7049B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049B8);
  }

  return result;
}

unint64_t sub_1D2A739D0()
{
  result = qword_1EC7049C0;
  if (!qword_1EC7049C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049C0);
  }

  return result;
}

unint64_t sub_1D2A73A28()
{
  result = qword_1EC7049C8;
  if (!qword_1EC7049C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049C8);
  }

  return result;
}

unint64_t sub_1D2A73A80()
{
  result = qword_1EC7049D0;
  if (!qword_1EC7049D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049D0);
  }

  return result;
}

unint64_t sub_1D2A73AD8()
{
  result = qword_1EC7049D8;
  if (!qword_1EC7049D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049D8);
  }

  return result;
}

unint64_t sub_1D2A73B30()
{
  result = qword_1EC7049E0;
  if (!qword_1EC7049E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049E0);
  }

  return result;
}

unint64_t sub_1D2A73B88()
{
  result = qword_1EC7049E8;
  if (!qword_1EC7049E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049E8);
  }

  return result;
}

unint64_t sub_1D2A73BE0()
{
  result = qword_1EC7049F0;
  if (!qword_1EC7049F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049F0);
  }

  return result;
}

unint64_t sub_1D2A73C38()
{
  result = qword_1EC7049F8;
  if (!qword_1EC7049F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7049F8);
  }

  return result;
}

unint64_t sub_1D2A73C90()
{
  result = qword_1EC704A00;
  if (!qword_1EC704A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A00);
  }

  return result;
}

unint64_t sub_1D2A73CE8()
{
  result = qword_1EC704A08;
  if (!qword_1EC704A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A08);
  }

  return result;
}

unint64_t sub_1D2A73D40()
{
  result = qword_1EC704A10;
  if (!qword_1EC704A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A10);
  }

  return result;
}

unint64_t sub_1D2A73D98()
{
  result = qword_1EC704A18;
  if (!qword_1EC704A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A18);
  }

  return result;
}

unint64_t sub_1D2A73DF0()
{
  result = qword_1EC704A20;
  if (!qword_1EC704A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A20);
  }

  return result;
}

unint64_t sub_1D2A73E48()
{
  result = qword_1EC704A28;
  if (!qword_1EC704A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A28);
  }

  return result;
}

unint64_t sub_1D2A73EA0()
{
  result = qword_1EC704A30;
  if (!qword_1EC704A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A30);
  }

  return result;
}

unint64_t sub_1D2A73EF8()
{
  result = qword_1EC704A38;
  if (!qword_1EC704A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A38);
  }

  return result;
}

unint64_t sub_1D2A73F50()
{
  result = qword_1EE0884A8[0];
  if (!qword_1EE0884A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0884A8);
  }

  return result;
}

unint64_t sub_1D2A73FA8()
{
  result = qword_1EC704A40;
  if (!qword_1EC704A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A40);
  }

  return result;
}

unint64_t sub_1D2A74000()
{
  result = qword_1EC704A48;
  if (!qword_1EC704A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A48);
  }

  return result;
}

unint64_t sub_1D2A74058()
{
  result = qword_1EC704A50;
  if (!qword_1EC704A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A50);
  }

  return result;
}

unint64_t sub_1D2A740B0()
{
  result = qword_1EC704A58;
  if (!qword_1EC704A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A58);
  }

  return result;
}

unint64_t sub_1D2A74108()
{
  result = qword_1EC704A60;
  if (!qword_1EC704A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A60);
  }

  return result;
}

unint64_t sub_1D2A74160()
{
  result = qword_1EC704A68;
  if (!qword_1EC704A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A68);
  }

  return result;
}

unint64_t sub_1D2A741B8()
{
  result = qword_1EC704A70;
  if (!qword_1EC704A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A70);
  }

  return result;
}

unint64_t sub_1D2A74210()
{
  result = qword_1EC704A78;
  if (!qword_1EC704A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A78);
  }

  return result;
}

unint64_t sub_1D2A74268()
{
  result = qword_1EC704A80;
  if (!qword_1EC704A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A80);
  }

  return result;
}

unint64_t sub_1D2A742C0()
{
  result = qword_1EC704A88;
  if (!qword_1EC704A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A88);
  }

  return result;
}

unint64_t sub_1D2A74318()
{
  result = qword_1EC704A90;
  if (!qword_1EC704A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A90);
  }

  return result;
}

unint64_t sub_1D2A74370()
{
  result = qword_1EC704A98;
  if (!qword_1EC704A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704A98);
  }

  return result;
}

unint64_t sub_1D2A743C8()
{
  result = qword_1EC704AA0;
  if (!qword_1EC704AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AA0);
  }

  return result;
}

unint64_t sub_1D2A74420()
{
  result = qword_1EC704AA8;
  if (!qword_1EC704AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AA8);
  }

  return result;
}

unint64_t sub_1D2A74478()
{
  result = qword_1EC704AB0;
  if (!qword_1EC704AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AB0);
  }

  return result;
}

unint64_t sub_1D2A744D0()
{
  result = qword_1EC704AB8;
  if (!qword_1EC704AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AB8);
  }

  return result;
}

unint64_t sub_1D2A74528()
{
  result = qword_1EC704AC0;
  if (!qword_1EC704AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AC0);
  }

  return result;
}

unint64_t sub_1D2A74580()
{
  result = qword_1EC704AC8;
  if (!qword_1EC704AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AC8);
  }

  return result;
}

unint64_t sub_1D2A745D8()
{
  result = qword_1EC704AD0;
  if (!qword_1EC704AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AD0);
  }

  return result;
}

unint64_t sub_1D2A74630()
{
  result = qword_1EC704AD8;
  if (!qword_1EC704AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AD8);
  }

  return result;
}

unint64_t sub_1D2A74688()
{
  result = qword_1EC704AE0;
  if (!qword_1EC704AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AE0);
  }

  return result;
}

unint64_t sub_1D2A746E0()
{
  result = qword_1EC704AE8;
  if (!qword_1EC704AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AE8);
  }

  return result;
}

unint64_t sub_1D2A74738()
{
  result = qword_1EC704AF0;
  if (!qword_1EC704AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AF0);
  }

  return result;
}

unint64_t sub_1D2A74790()
{
  result = qword_1EC704AF8;
  if (!qword_1EC704AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704AF8);
  }

  return result;
}

unint64_t sub_1D2A747E8()
{
  result = qword_1EC704B00;
  if (!qword_1EC704B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B00);
  }

  return result;
}

unint64_t sub_1D2A74840()
{
  result = qword_1EC704B08;
  if (!qword_1EC704B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B08);
  }

  return result;
}

unint64_t sub_1D2A74898()
{
  result = qword_1EC704B10;
  if (!qword_1EC704B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B10);
  }

  return result;
}

unint64_t sub_1D2A748F0()
{
  result = qword_1EC704B18;
  if (!qword_1EC704B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B18);
  }

  return result;
}

unint64_t sub_1D2A74948()
{
  result = qword_1EC704B20;
  if (!qword_1EC704B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B20);
  }

  return result;
}

unint64_t sub_1D2A749A0()
{
  result = qword_1EC704B28;
  if (!qword_1EC704B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B28);
  }

  return result;
}

unint64_t sub_1D2A749F8()
{
  result = qword_1EC704B30;
  if (!qword_1EC704B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B30);
  }

  return result;
}

unint64_t sub_1D2A74A50()
{
  result = qword_1EC704B38;
  if (!qword_1EC704B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B38);
  }

  return result;
}

unint64_t sub_1D2A74AA8()
{
  result = qword_1EC704B40;
  if (!qword_1EC704B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B40);
  }

  return result;
}

unint64_t sub_1D2A74B00()
{
  result = qword_1EC704B48;
  if (!qword_1EC704B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B48);
  }

  return result;
}

unint64_t sub_1D2A74B58()
{
  result = qword_1EC704B50;
  if (!qword_1EC704B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B50);
  }

  return result;
}

unint64_t sub_1D2A74BB0()
{
  result = qword_1EC704B58;
  if (!qword_1EC704B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B58);
  }

  return result;
}

unint64_t sub_1D2A74C08()
{
  result = qword_1EC704B60;
  if (!qword_1EC704B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B60);
  }

  return result;
}

unint64_t sub_1D2A74C60()
{
  result = qword_1EC704B68;
  if (!qword_1EC704B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B68);
  }

  return result;
}

unint64_t sub_1D2A74CB8()
{
  result = qword_1EC704B70;
  if (!qword_1EC704B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B70);
  }

  return result;
}

unint64_t sub_1D2A74D10()
{
  result = qword_1EC704B78;
  if (!qword_1EC704B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B78);
  }

  return result;
}

unint64_t sub_1D2A74D68()
{
  result = qword_1EC704B80;
  if (!qword_1EC704B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B80);
  }

  return result;
}

unint64_t sub_1D2A74DC0()
{
  result = qword_1EC704B88;
  if (!qword_1EC704B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B88);
  }

  return result;
}

unint64_t sub_1D2A74E18()
{
  result = qword_1EC704B90;
  if (!qword_1EC704B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B90);
  }

  return result;
}

unint64_t sub_1D2A74E70()
{
  result = qword_1EC704B98;
  if (!qword_1EC704B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704B98);
  }

  return result;
}

unint64_t sub_1D2A74EC8()
{
  result = qword_1EC704BA0;
  if (!qword_1EC704BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704BA0);
  }

  return result;
}

unint64_t sub_1D2A74F20()
{
  result = qword_1EC704BA8;
  if (!qword_1EC704BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704BA8);
  }

  return result;
}

unint64_t sub_1D2A74F78()
{
  result = qword_1EC704BB0;
  if (!qword_1EC704BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704BB0);
  }

  return result;
}

unint64_t sub_1D2A74FD0()
{
  result = qword_1EC704BB8;
  if (!qword_1EC704BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704BB8);
  }

  return result;
}

unint64_t sub_1D2A75028()
{
  result = qword_1EC704BC0;
  if (!qword_1EC704BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704BC0);
  }

  return result;
}

unint64_t sub_1D2A75080()
{
  result = qword_1EC704BC8;
  if (!qword_1EC704BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704BC8);
  }

  return result;
}

unint64_t sub_1D2A750D8()
{
  result = qword_1EC704BD0;
  if (!qword_1EC704BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704BD0);
  }

  return result;
}

uint64_t sub_1D2A7512C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656D616ELL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2A75240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2A75354(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6153746F4E6F64 && a2 == 0xED0000657A697469;
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D2ADF530 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D2ADF510 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D2ADF4F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D2A754CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x67616D4965736162 && a2 == 0xED00006174614465;
  if (v3 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D49686374656B73 && a2 == 0xEF61746144656761 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D686374656B73 && a2 == 0xEE00617461446B73 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67616D4965736162 && a2 == 0xEE006F6974615265 || (sub_1D2AC7354() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D2ADF2B0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D2ADF2D0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D2ADF2F0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D2ADF310 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D2A757C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F73726550736168 && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2A758E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965636166 && a2 == 0xE600000000000000 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67616D4965636166 && a2 == 0xED00006174614465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2A759FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C797473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E72657478457369 && a2 == 0xEA00000000006C61 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2A75B20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5064657461727563 && a2 == 0xED000074706D6F72;
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6977617264 && a2 == 0xE700000000000000 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646574726F706D69 && a2 == 0xED00006567616D49 || (sub_1D2AC7354() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_1D2AC7354() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static GenerationRecipeMigrator.decodeAndUpgradeIfNeeded(data:version:)@<X0>(unsigned __int8 *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D2AC5E14();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1D2AC5E04();
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        sub_1D2A767FC();
        sub_1D2AC5DF4();
        if (!v2)
        {
          v20 = v44;
          v18 = v45;
          v19 = v43;
          goto LABEL_13;
        }
      }

      sub_1D2A767A8();
      sub_1D2AC5DF4();
      if (v2)
      {
      }

      v38 = v44;
      v36 = v45;
      v37 = v43;
    }

    else
    {
      if (!v4)
      {
        sub_1D2A768A4();
        sub_1D2AC5DF4();
        if (!v2)
        {
          v8 = sub_1D2A7888C(v43, v44, v45);
          v10 = v9;
          v12 = v11;

          v13 = sub_1D2A7917C(v8, v10, v12 & 1);
          v15 = v14;
          v17 = v16;

          v18 = v17 & 1;
          v19 = v13;
          v20 = v15;
LABEL_13:
          v21 = sub_1D2A79A64(v19, v20, v18);
          v23 = v22;
          v25 = v24;

          sub_1D2A768F8(v21, v23, v25 & 1, &v43);
LABEL_28:

LABEL_29:
          v41[0] = v43;
          v41[1] = v44;
          v42 = v45;
          sub_1D2A76AE0(v41, &v43);

          goto LABEL_30;
        }
      }

      sub_1D2A76850();
      sub_1D2AC5DF4();
      if (v2)
      {
      }

      v26 = sub_1D2A7917C(v43, v44, v45);
      v28 = v27;
      v30 = v29;

      v31 = sub_1D2A79A64(v26, v28, v30 & 1);
      v33 = v32;
      v35 = v34;

      v36 = v35 & 1;
      v37 = v31;
      v38 = v33;
    }

    sub_1D2A768F8(v37, v38, v36, &v43);
    goto LABEL_28;
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      sub_1D2A76754();
      sub_1D2AC5DF4();
      if (!v2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_1D2A76700();
      sub_1D2AC5DF4();
      if (!v2)
      {
        goto LABEL_30;
      }
    }
  }

  if (v4 == 6)
  {
    sub_1D2A766AC();
    sub_1D2AC5DF4();
    if (v2)
    {
    }
  }

  else
  {
    sub_1D2A766AC();
    sub_1D2AC5DF4();
    if (v2)
    {

      sub_1D2A76700();
      sub_1D2AC5DF4();
LABEL_30:
      sub_1D2A76CE8(&v43, v41);

      v40 = v41[0];
      goto LABEL_31;
    }
  }

  v40 = v43;
LABEL_31:
  *a2 = v40;
  return result;
}

unint64_t sub_1D2A766AC()
{
  result = qword_1EC704C18;
  if (!qword_1EC704C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704C18);
  }

  return result;
}

unint64_t sub_1D2A76700()
{
  result = qword_1EC704C20;
  if (!qword_1EC704C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704C20);
  }

  return result;
}

unint64_t sub_1D2A76754()
{
  result = qword_1EC704C28;
  if (!qword_1EC704C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704C28);
  }

  return result;
}

unint64_t sub_1D2A767A8()
{
  result = qword_1EC704C30;
  if (!qword_1EC704C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704C30);
  }

  return result;
}

unint64_t sub_1D2A767FC()
{
  result = qword_1EC704C38;
  if (!qword_1EC704C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704C38);
  }

  return result;
}

unint64_t sub_1D2A76850()
{
  result = qword_1EC704C40;
  if (!qword_1EC704C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704C40);
  }

  return result;
}

unint64_t sub_1D2A768A4()
{
  result = qword_1EC704C48;
  if (!qword_1EC704C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704C48);
  }

  return result;
}

uint64_t sub_1D2A768F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = result;
    v22 = a3;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D2A2CB80(0, v6, 0);
    v7 = v44;
    v9 = v8 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 48);
      v12 = *(v9 + 16);
      v40 = *(v9 + 32);
      v41 = v11;
      v13 = *(v9 + 48);
      v42 = *(v9 + 64);
      v14 = *(v9 + 16);
      v39[0] = *v9;
      v39[1] = v14;
      v33 = v40;
      v34 = v13;
      v35 = *(v9 + 64);
      v43 = *(v9 + 80);
      v36 = *(v9 + 80);
      v31 = v39[0];
      v32 = v12;
      sub_1D2A75F30(v39, v37);
      sub_1D2A76EE0(&v31, v37);
      v23[2] = v33;
      v23[3] = v34;
      v23[4] = v35;
      v24 = v36;
      v23[0] = v31;
      v23[1] = v32;
      result = sub_1D2A75F8C(v23);
      v30 = v38;
      v28 = v37[3];
      v29 = v37[4];
      v26 = v37[1];
      v27 = v37[2];
      v25 = v37[0];
      v44 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D2A2CB80((v15 > 1), v16 + 1, 1);
        v7 = v44;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 88 * v16;
      v18 = v26;
      *(v17 + 32) = v25;
      *(v17 + 48) = v18;
      v19 = v27;
      v20 = v28;
      v21 = v29;
      *(v17 + 112) = v30;
      *(v17 + 80) = v20;
      *(v17 + 96) = v21;
      *(v17 + 64) = v19;
      if (!i)
      {
        break;
      }

      v9 += 88;
    }

    a3 = v22;
  }

  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1D2A76AE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(*result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_10:
    *a2 = v6;
    *(a2 + 8) = v2;
    *(a2 + 16) = v4;
    return result;
  }

  v22 = *(result + 16);
  v23 = *(result + 8);
  v24 = a2;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1D2A2CBB8(0, v5, 0);
  if (*(v3 + 16))
  {
    v7 = 0;
    v6 = v43;
    v8 = v3 + 32;
    while (1)
    {
      v9 = *(v8 + 16);
      v41[0] = *v8;
      v41[1] = v9;
      v10 = *(v8 + 32);
      v11 = *(v8 + 48);
      v12 = *(v8 + 64);
      v42 = *(v8 + 80);
      v41[3] = v11;
      v41[4] = v12;
      v41[2] = v10;
      v13 = *(v8 + 48);
      v35 = *(v8 + 32);
      v36 = v13;
      v37 = *(v8 + 64);
      v38 = *(v8 + 80);
      v14 = *(v8 + 16);
      v33 = *v8;
      v34 = v14;
      sub_1D2A75FE0(v41, &v27);
      sub_1D2A77554(&v33, v39);
      v25[2] = v35;
      v25[3] = v36;
      v25[4] = v37;
      v26 = v38;
      v25[0] = v33;
      v25[1] = v34;
      result = sub_1D2A7603C(v25);
      v32 = v40;
      v30 = v39[3];
      v31 = v39[4];
      v28 = v39[1];
      v29 = v39[2];
      v27 = v39[0];
      v43 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D2A2CBB8((v15 > 1), v16 + 1, 1);
        v6 = v43;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 88 * v16;
      v18 = v28;
      *(v17 + 32) = v27;
      *(v17 + 48) = v18;
      v19 = v29;
      v20 = v30;
      v21 = v31;
      *(v17 + 112) = v32;
      *(v17 + 80) = v20;
      *(v17 + 96) = v21;
      *(v17 + 64) = v19;
      if (v5 - 1 == v7)
      {
        break;
      }

      v8 += 88;
      if (++v7 >= *(v3 + 16))
      {
        goto LABEL_11;
      }
    }

    v2 = v23;
    a2 = v24;
    v4 = v22;
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  sub_1D2A7603C(&v27);

  __break(1u);
  return result;
}

uint64_t sub_1D2A76CE8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_10:
    *a2 = v4;
    return result;
  }

  v20 = a2;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D2A2CBF0(0, v3, 0);
  if (*(v2 + 16))
  {
    v5 = 0;
    v4 = v39;
    v6 = (v2 + 32);
    while (1)
    {
      v7 = v6[1];
      v37[0] = *v6;
      v37[1] = v7;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v6[4];
      v38 = *(v6 + 10);
      v37[3] = v9;
      v37[4] = v10;
      v37[2] = v8;
      v11 = v6[3];
      v31 = v6[2];
      v32 = v11;
      v33 = v6[4];
      v34 = *(v6 + 10);
      v12 = v6[1];
      v29 = *v6;
      v30 = v12;
      sub_1D2A76090(v37, &v23);
      sub_1D2A77E38(&v29, v35);
      v21[2] = v31;
      v21[3] = v32;
      v21[4] = v33;
      v22 = v34;
      v21[0] = v29;
      v21[1] = v30;
      result = sub_1D2A760EC(v21);
      v28 = v36;
      v26 = v35[3];
      v27 = v35[4];
      v24 = v35[1];
      v25 = v35[2];
      v23 = v35[0];
      v39 = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D2A2CBF0((v13 > 1), v14 + 1, 1);
        v4 = v39;
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 88 * v14;
      v16 = v24;
      *(v15 + 32) = v23;
      *(v15 + 48) = v16;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      *(v15 + 112) = v28;
      *(v15 + 80) = v18;
      *(v15 + 96) = v19;
      *(v15 + 64) = v17;
      if (v3 - 1 == v5)
      {
        break;
      }

      v6 = (v6 + 88);
      if (++v5 >= *(v2 + 16))
      {
        goto LABEL_11;
      }
    }

    a2 = v20;
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  sub_1D2A760EC(&v23);

  __break(1u);
  return result;
}

uint64_t sub_1D2A76EE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v5 = sub_1D2AC5F94();
  v93 = *(v5 - 8);
  v6 = v93[8];
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
  v15 = *(v90 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v18 = (&v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[2];
  v26 = a1[3];
  v28 = a1[4];
  v27 = a1[5];
  v29 = a1[8];
  v30 = v29 >> 61;
  if ((v29 >> 61) > 2)
  {
    if (v30 == 3)
    {
      v59 = v81;
      *v81 = v23;
      v59[1] = v24;
      v59[2] = v25;
      v59[3] = v26;
      v59[4] = 0;
      v59[8] = 0x6000000000000000;
      v60 = v25;

      return sub_1D2A479B4(v60, v26);
    }

    if (v30 == 4)
    {
      v51 = *a1;
      v52 = a1[2];
      v53 = a1[4];
      v54 = a1[3];
      v55 = a1[5];

      sub_1D2A479A0(v53, v55);
      result = sub_1D2A47930(0, 0xF000000000000000);
      v57 = v81;
      *v81 = v51;
      v57[1] = v24;
      v57[2] = v52;
      v57[3] = v26;
      v57[4] = v53;
      v57[5] = v55;
      v57[8] = 0x8000000000000000;
      return result;
    }

    v74 = v81;
    *v81 = v23;
    v74[1] = v24;
    v74[8] = 0xA000000000000000;
  }

  if (!v30)
  {
    v58 = v81;
    *v81 = v23;
    v58[1] = v24;
    v58[8] = 0;
  }

  v87 = v5;
  v79 = v3;
  if (v30 == 1)
  {
    v31 = *(v25 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v77 = v23;
      v78 = v24;
      v94 = MEMORY[0x1E69E7CC0];
      v33 = v25;
      sub_1D2A2CC28(0, v31, 0);
      v32 = v94;
      v34 = v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v35 = *(v15 + 72);
      v83 = (v93 + 6);
      v84 = v35;
      v82 = (v93 + 7);
      v80 = (v93 + 4);
      v36 = v87;
      v85 = v18;
      v86 = v22;
      do
      {
        v93 = v32;
        sub_1D2A7A3DC(v34, v18, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
        v37 = v90;
        v38 = v92;
        sub_1D2A7A3DC(v18 + *(v90 + 20), v92, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
        v39 = (*v83)(v38, 2, v36);
        if (!v39)
        {
          (*v80)(v91, v92, v36);
        }

        v40 = v91;
        (*v82)(v91, v39, 2, v36);
        v42 = *v18;
        v41 = v18[1];
        v43 = v89;
        v44 = v86;
        sub_1D2A7A4A4(v40, v86 + *(v89 + 20), type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
        v45 = (v18 + *(v37 + 24));
        v47 = *v45;
        v46 = v45[1];

        sub_1D2A7A444(v18, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
        *v44 = v42;
        v44[1] = v41;
        v48 = (v44 + *(v43 + 24));
        *v48 = v47;
        v48[1] = v46;
        v32 = v93;
        v94 = v93;
        v50 = v93[2];
        v49 = v93[3];
        if (v50 >= v49 >> 1)
        {
          sub_1D2A2CC28(v49 > 1, v50 + 1, 1);
          v32 = v94;
        }

        v32[2] = v50 + 1;
        sub_1D2A7A4A4(v44, v32 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v50, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
        v18 = v85;
        v34 += v84;
        --v31;
        v36 = v87;
      }

      while (v31);
      v23 = v77;
      v24 = v78;
    }

    v75 = v81;
    *v81 = v23;
    v75[1] = v24;
    v75[2] = v32;
    v75[8] = 0x2000000000000000;
  }

  else
  {
    v92 = a1[7];
    v91 = a1[6];
    v61 = v23;
    v62 = v25;
    v63 = v28;
    v83 = v28;
    v84 = v27;
    v64 = v27;
    v78 = v24;
    sub_1D2A479A0(v23, v24);
    sub_1D2A479A0(v62, v26);
    sub_1D2A479A0(v63, v64);
    sub_1D2AC5F84();
    v65 = sub_1D2AC5F64();
    v89 = v66;
    v90 = v65;
    v67 = v93[1];
    v68 = v87;
    v67(v8, v87);
    sub_1D2AC5F84();
    sub_1D2AC5F64();
    v67(v8, v68);

    v69 = v81;
    v70 = v78;
    *v81 = v61;
    v69[1] = v70;
    v69[2] = v62;
    v69[3] = v26;
    v71 = v84;
    v69[4] = v83;
    v69[5] = v71;
    v72 = v92;
    v69[6] = v91;
    v69[7] = v72;
    v69[8] = v29 & 0x10001 | 0x4000000000000100;
    v73 = v89;
    v69[9] = v90;
    v69[10] = v73;
  }

  return result;
}

uint64_t sub_1D2A77554@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v80 = a2;
  v3 = sub_1D2AC5F94();
  v98 = *(v3 - 8);
  v4 = v98[8];
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v87 + 1) = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
  v13 = *(*(&v87 + 1) - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](*(&v87 + 1));
  v85 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v87 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  v86 = *(v87 - 8);
  v16 = *(v86 + 64);
  v17 = MEMORY[0x1EEE9AC00](v87);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v92 = *a1;
  v93 = v20;
  v21 = a1[4];
  v95 = a1[3];
  v96 = v21;
  v94 = a1[2];
  v97 = *(a1 + 10);
  v23 = *(&v92 + 1);
  v22 = v92;
  v24 = v20;
  v25 = v94;
  v26 = *(&v94 + 1) | ((*(&v94 + 5) | (BYTE7(v94) << 16)) << 32);
  v27 = *(&v94 + 1);
  v28 = BYTE7(v21) >> 5;
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      v55 = v92;

      sub_1D2A479B4(v24, *(&v24 + 1));
      result = sub_1D2A47930(0, 0xF000000000000000);
      v52 = v80;
      *v80 = v55;
      v52[1] = v23;
      *(v52 + 1) = v24;
      v52[4] = v25 & 1;
      v53 = 0x6000000000000000;
    }

    else
    {
      v48 = v92;
      if (v28 != 4)
      {
        v91[0] = 46;
        v91[1] = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v17);
        *(&v78 - 2) = v91;
        sub_1D2A75FE0(&v92, &v90);

        v66 = sub_1D2A784CC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D2A7A384, (&v78 - 2), v48, v23, &v96);
        v67 = *(v66 + 16);
        if (v67)
        {
          result = sub_1D2A7603C(&v92);
          if (v67 > *(v66 + 16))
          {
            __break(1u);
            return result;
          }

          v68 = (v66 + 32 * v67);
          v69 = *v68;
          v70 = v68[1];
          v71 = v68[2];
          v72 = v68[3];

          v73 = MEMORY[0x1D38A70A0](v69, v70, v71, v72);
          v75 = v74;

          v76 = v80;
          *v80 = v73;
          v76[1] = v75;
        }

        else
        {

          v76 = v80;
          *v80 = v48;
          v76[1] = v23;
        }

        v76[8] = 0xA000000000000000;
        return result;
      }

      v49 = v93;
      v50 = v94 | (v26 << 8);

      sub_1D2A479A0(v50, v27);
      result = sub_1D2A47930(0, 0xF000000000000000);
      v52 = v80;
      *v80 = v48;
      v52[1] = v23;
      *(v52 + 1) = __PAIR128__(*(&v24 + 1), v49);
      v52[4] = v50;
      v52[5] = v27;
      v53 = 0x8000000000000000;
    }

    v52[8] = v53;
    return result;
  }

  if (!v28)
  {
    v54 = v80;
    *v80 = v92;
    v54[8] = 0;
  }

  v84 = v3;
  if (v28 == 1)
  {
    v29 = *(v20 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v78 = v92;
      v90 = MEMORY[0x1E69E7CC0];
      sub_1D2A2CC6C(0, v29, 0);
      v30 = v90;
      v31 = v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v83 = *(v13 + 72);
      v82 = (v98 + 6);
      v81 = (v98 + 7);
      v79 = (v98 + 4);
      v32 = v84;
      do
      {
        v98 = v30;
        v33 = v19;
        v34 = v85;
        sub_1D2A7A3DC(v31, v85, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
        v35 = *(&v87 + 1);
        v36 = v89;
        sub_1D2A7A3DC(v34 + *(*(&v87 + 1) + 20), v89, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
        v37 = (*v82)(v36, 2, v32);
        if (!v37)
        {
          (*v79)(v88, v89, v32);
        }

        v38 = v88;
        (*v81)(v88, v37, 2, v32);
        v40 = *v34;
        v39 = v34[1];
        v41 = v87;
        sub_1D2A7A4A4(v38, &v33[*(v87 + 20)], type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
        v42 = (v34 + *(v35 + 24));
        v44 = *v42;
        v43 = v42[1];

        sub_1D2A7A444(v34, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
        *v33 = v40;
        *(v33 + 1) = v39;
        v19 = v33;
        v45 = &v33[*(v41 + 24)];
        *v45 = v44;
        *(v45 + 1) = v43;
        v30 = v98;
        v90 = v98;
        v47 = v98[2];
        v46 = v98[3];
        if (v47 >= v46 >> 1)
        {
          sub_1D2A2CC6C(v46 > 1, v47 + 1, 1);
          v30 = v90;
        }

        v30[2] = v47 + 1;
        sub_1D2A7A4A4(v33, v30 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v47, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
        v31 += v83;
        --v29;
        v32 = v84;
      }

      while (v29);
      v23 = *(&v78 + 1);
      v22 = v78;
    }

    v77 = v80;
    *v80 = v22;
    v77[1] = v23;
    v77[2] = v30;
    v77[8] = 0x2000000000000000;
  }

  LODWORD(v88) = BYTE2(v96);
  v89 = v96;
  v56 = v94 | (v26 << 8);
  v86 = v56;
  v87 = v95;
  *(&v78 + 1) = *(&v92 + 1);
  v57 = v92;
  sub_1D2A479A0(v92, *(&v92 + 1));
  sub_1D2A479A0(v24, *(&v24 + 1));
  sub_1D2A479A0(v56, v27);
  sub_1D2AC5F84();
  v85 = sub_1D2AC5F64();
  v83 = v58;
  v59 = v98[1];
  v60 = v84;
  v59(v6, v84);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v59(v6, v60);

  v61 = v80;
  v62 = *(&v78 + 1);
  *v80 = v57;
  v61[1] = v62;
  *(v61 + 1) = v24;
  v61[4] = v86;
  v61[5] = v27;
  v63 = *(&v87 + 1);
  v61[6] = v87;
  v61[7] = v63;
  v64 = 0x4000000000010100;
  if ((v88 & 1) == 0)
  {
    v64 = 0x4000000000000100;
  }

  v61[8] = v64 & 0xFFFFFFFFFFFFFFFELL | v89 & 1;
  v65 = v83;
  v61[9] = v85;
  v61[10] = v65;
  return result;
}

uint64_t sub_1D2A77E38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v5 = sub_1D2AC5F94();
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  v15 = *(v92 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  v90 = *(v19 - 8);
  v91 = v19;
  v20 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[2];
  v26 = a1[3];
  v27 = a1[4];
  v28 = a1[5];
  v29 = a1[8];
  v30 = v29 >> 61;
  if ((v29 >> 61) > 2)
  {
    if (v30 == 3)
    {
      v60 = *a1;
      v61 = a1[2];
      v62 = a1[4];

      sub_1D2A479A0(v61, v26);
      result = sub_1D2A47930(0, 0xF000000000000000);
      v63 = v84;
      *v84 = v60;
      v63[1] = v24;
      v63[2] = v61;
      v63[3] = v26;
      v63[4] = v62 & 1;
      v63[8] = 0x6000000000000000;
      return result;
    }

    if (v30 == 4)
    {
      v53 = *a1;
      v54 = a1[2];
      v55 = a1[4];
      v56 = v28;

      sub_1D2A479A0(v55, v56);
      result = sub_1D2A47930(0, 0xF000000000000000);
      v58 = v84;
      *v84 = v53;
      v58[1] = v24;
      v58[2] = v54;
      v58[3] = v26;
      v58[4] = v55;
      v58[5] = v56;
      v58[8] = 0x8000000000000000;
      return result;
    }

    v77 = v84;
    *v84 = v23;
    v77[1] = v24;
    v77[3] = 0;
    v77[4] = 0;
    v77[2] = 0;
    v77[8] = 0xA000000000000000;
  }

  if (!v30)
  {
    v59 = v84;
    *v84 = v23;
    v59[1] = v24;
    v59[8] = 0;
  }

  v89 = v5;
  v82 = v3;
  if (v30 == 1)
  {
    v31 = *(v25 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v80 = v23;
      v81 = v24;
      v95 = MEMORY[0x1E69E7CC0];
      v33 = v25;
      sub_1D2A2CCB0(0, v31, 0);
      v32 = v95;
      v34 = v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v35 = *(v15 + 72);
      v86 = (v83 + 48);
      v87 = v35;
      v85 = (v83 + 56);
      v83 += 32;
      v36 = v89;
      v88 = v22;
      do
      {
        sub_1D2A7A3DC(v34, v18, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
        v37 = v92;
        v38 = v94;
        sub_1D2A7A3DC(v18 + *(v92 + 20), v94, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
        v39 = (*v86)(v38, 2, v36);
        if (!v39)
        {
          (*v83)(v93, v94, v36);
        }

        v40 = v93;
        (*v85)(v93, v39, 2, v36);
        v42 = *v18;
        v41 = v18[1];
        v43 = (v18 + *(v37 + 24));
        v45 = *v43;
        v44 = v43[1];

        sub_1D2A7A444(v18, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
        v46 = v88;
        *v88 = v42;
        v46[1] = v41;
        v47 = v91;
        v48 = v40;
        v49 = v46;
        sub_1D2A7A4A4(v48, v46 + *(v91 + 20), type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
        v50 = (v49 + *(v47 + 24));
        *v50 = v45;
        v50[1] = v44;
        v95 = v32;
        v52 = *(v32 + 16);
        v51 = *(v32 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1D2A2CCB0(v51 > 1, v52 + 1, 1);
          v32 = v95;
        }

        *(v32 + 16) = v52 + 1;
        sub_1D2A7A4A4(v49, v32 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v52, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
        v34 += v87;
        --v31;
        v36 = v89;
      }

      while (v31);
      v23 = v80;
      v24 = v81;
    }

    v78 = v84;
    *v84 = v23;
    v78[1] = v24;
    v78[2] = v32;
    v78[8] = 0x2000000000000000;
  }

  else
  {
    v94 = a1[7];
    v93 = a1[6];
    v64 = v23;
    v65 = v25;
    v66 = v27;
    v86 = v28;
    v87 = v27;
    v67 = v28;
    v81 = v24;
    sub_1D2A479A0(v23, v24);
    sub_1D2A479A0(v65, v26);
    sub_1D2A479A0(v66, v67);
    sub_1D2AC5F84();
    v68 = sub_1D2AC5F64();
    v91 = v69;
    v92 = v68;
    v70 = *(v83 + 8);
    v71 = v89;
    v70(v8, v89);
    sub_1D2AC5F84();
    sub_1D2AC5F64();
    v70(v8, v71);

    v72 = v84;
    v73 = v81;
    *v84 = v64;
    v72[1] = v73;
    v72[2] = v65;
    v72[3] = v26;
    v74 = v86;
    v72[4] = v87;
    v72[5] = v74;
    v75 = v94;
    v72[6] = v93;
    v72[7] = v75;
    v72[8] = v29 & 0x10001 | 0x4000000000000100;
    v76 = v91;
    v72[9] = v92;
    v72[10] = v76;
  }

  return result;
}

unint64_t sub_1D2A784CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D2AC6D14();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D2A44A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D2A44A94((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D2AC6D04();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D2AC6C94();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D2AC6C94();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D2AC6D14();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D2A44A94(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D2AC6D14();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D2A44A94(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D2A44A94((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D2AC6C94();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2A7888C(uint64_t a1, uint64_t a2, int a3)
{
  v64[3] = a3;
  v65 = a2;
  v5 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v92 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity(0);
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity(0);
  v88 = *(v89 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2AC5F94();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v69 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (!v22)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v101 = MEMORY[0x1E69E7CC0];
  sub_1D2A2CA0C(0, v22, 0);
  v23 = v22;
  v24 = 0;
  result = v101;
  v77 = a1 + 32;
  v68 = (v19 + 8);
  v85 = (v19 + 48);
  v84 = (v19 + 56);
  v79 = (v19 + 32);
  v67 = xmmword_1D2AC9FC0;
  v91 = v18;
  v76 = v22;
  v87 = v11;
  v86 = v14;
  while (1)
  {
    v26 = (v77 + 88 * v24);
    v27 = v26[1];
    v95 = *v26;
    v96 = v27;
    v28 = v26[4];
    v29 = v26[2];
    v98 = v26[3];
    v99 = v28;
    v97 = v29;
    v100 = *(v26 + 10);
    v30 = *(&v95 + 1);
    v31 = v95;
    v81 = v98;
    v32 = BYTE7(v28) >> 5;
    v83 = v24;
    *&v82 = result;
    v80 = v95;
    if (v32 > 2)
    {
      if (v32 == 3)
      {
        v50 = v71 & 1 | 0x6000000000000000;
        v51 = *(&v95 + 1);
        v90 = v96;

        sub_1D2A479B4(v90, *(&v90 + 1));
        v52 = v90;
        v71 = v50;
      }

      else if (v32 == 4)
      {
        v50 = v73 & 1 | 0x8000000000000000;
        v51 = *(&v95 + 1);

        v52 = 0uLL;
        v73 = v50;
        v53 = v67;
      }

      else
      {
        v50 = v74 & 1 | 0xA000000000000000;
        v51 = *(&v95 + 1);

        v74 = v50;
      }
    }

    else if (v32)
    {
      if (v32 == 1)
      {
        v33 = v96;
        v34 = *(v96 + 16);
        if (v34)
        {
          v94 = MEMORY[0x1E69E7CC0];
          v78 = *(&v95 + 1);

          sub_1D2A2CA44(0, v34, 0);
          v3 = v94;
          v35 = v33 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
          *&v90 = *(v66 + 72);
          do
          {
            v36 = v17;
            sub_1D2A7A3DC(v35, v14, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
            v37 = v93;
            sub_1D2A7A3DC(v14 + *(v11 + 20), v93, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
            v38 = (*v85)(v37, 2, v18);
            if (!v38)
            {
              (*v79)(v92, v93, v18);
            }

            v39 = v92;
            (*v84)(v92, v38, 2, v18);
            v41 = *v14;
            v40 = v14[1];
            v42 = (v14 + *(v11 + 24));
            v43 = *v42;
            v44 = v42[1];

            sub_1D2A7A444(v14, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
            *v36 = v41;
            *(v36 + 1) = v40;
            v45 = v89;
            v46 = v39;
            v17 = v36;
            sub_1D2A7A4A4(v46, &v36[*(v89 + 20)], type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
            v47 = &v36[*(v45 + 24)];
            *v47 = v43;
            *(v47 + 1) = v44;
            v94 = v3;
            v49 = *(v3 + 16);
            v48 = *(v3 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_1D2A2CA44(v48 > 1, v49 + 1, 1);
              v3 = v94;
            }

            *(v3 + 16) = v49 + 1;
            sub_1D2A7A4A4(v36, v3 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v49, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
            v35 += v90;
            --v34;
            v11 = v87;
            v14 = v86;
            v18 = v91;
          }

          while (v34);
          v30 = v78;
        }

        else
        {

          v3 = MEMORY[0x1E69E7CC0];
        }

        v51 = v30;

        sub_1D2A75D7C(&v95);
        v50 = v75 & 1 | 0x2000000000000000;
        *&v52 = v3;
        v75 = v50;
        v23 = v76;
      }

      else
      {
        v54 = *(&v95 + 1);
        v70 = v99;
        v55 = v97;
        v90 = v96;
        sub_1D2A75D20(&v95, &v94);
        v56 = v31;
        v51 = v54;
        sub_1D2A479A0(v56, v54);
        sub_1D2A479A0(v90, *(&v90 + 1));
        sub_1D2A479A0(v55, *(&v55 + 1));
        v57 = v69;
        sub_1D2AC5F84();
        v78 = sub_1D2AC5F64();
        v3 = v58;
        (*v68)(v57, v18);
        sub_1D2A75D7C(&v95);
        v52 = v90;
        v50 = v70 & 1 | 0x4000000000000000;
        v53 = v55;
        v23 = v76;
      }
    }

    else
    {
      v50 = v72 & 1;
      v51 = *(&v95 + 1);

      v72 = v50;
    }

    result = v82;
    v101 = v82;
    v60 = *(v82 + 16);
    v59 = *(v82 + 24);
    v61 = v83;
    if (v60 >= v59 >> 1)
    {
      v90 = v52;
      v82 = v53;
      sub_1D2A2CA0C((v59 > 1), v60 + 1, 1);
      v53 = v82;
      v52 = v90;
      v61 = v83;
      result = v101;
    }

    v24 = v61 + 1;
    *(result + 16) = v60 + 1;
    v62 = result + 88 * v60;
    *(v62 + 32) = v80;
    *(v62 + 40) = v51;
    *(v62 + 48) = v52;
    *(v62 + 64) = v53;
    *(v62 + 80) = v81;
    v63 = v78;
    *(v62 + 96) = v50;
    *(v62 + 104) = v63;
    *(v62 + 112) = v3;
    if (v24 == v23)
    {
      break;
    }

    v18 = v91;
  }

  return result;
}

uint64_t sub_1D2A7917C(uint64_t a1, uint64_t a2, int a3)
{
  v63[1] = a3;
  v64 = a2;
  v4 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v92 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity(0);
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity(0);
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2AC5F94();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v68 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v87 = v16;
    v104 = MEMORY[0x1E69E7CC0];
    sub_1D2A2CA88(0, v21, 0);
    v22 = 0;
    v74 = a1 + 32;
    result = v104;
    v66 = (v18 + 8);
    v85 = (v18 + 48);
    v84 = (v18 + 56);
    v76 = (v18 + 32);
    v75 = v21;
    v86 = v17;
    while (1)
    {
      v24 = (v74 + 88 * v22);
      v25 = v24[1];
      v99 = *v24;
      v100 = v25;
      v26 = v24[3];
      *v101 = v24[2];
      v27 = v24[4];
      *&v101[16] = v26;
      v102 = v27;
      v103 = *(v24 + 10);
      v29 = *(&v99 + 1);
      v28 = v99;
      v30 = *(&v100 + 1);
      v31 = v100;
      v83 = *&v101[8];
      v32 = *v101;
      v33 = BYTE7(v27) >> 5;
      v82 = v22;
      v81 = result;
      v80 = v99;
      v79 = *(&v100 + 1);
      v78 = *(&v26 + 1);
      v77 = *v101;
      if (v33 > 2)
      {
        break;
      }

      if (v33)
      {
        if (v33 == 1)
        {
          v34 = *(v100 + 16);
          if (v34)
          {
            v94 = MEMORY[0x1E69E7CC0];
            v67 = *(&v99 + 1);

            sub_1D2A2CAC0(0, v34, 0);
            v35 = v31 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
            v90 = *(v65 + 72);
            v93 = v94;
            do
            {
              sub_1D2A7A3DC(v35, v13, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
              v36 = v92;
              sub_1D2A7A3DC(v13 + *(v10 + 20), v92, type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind);
              v37 = (*v85)(v36, 2, v17);
              if (!v37)
              {
                (*v76)(v91, v92, v17);
              }

              v38 = v91;
              (*v84)(v91, v37, 2, v17);
              v40 = *v13;
              v39 = v13[1];
              v41 = v10;
              v42 = (v13 + *(v10 + 24));
              v44 = *v42;
              v43 = v42[1];

              v31 = v13;
              sub_1D2A7A444(v13, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
              v45 = v87;
              *v87 = v40;
              *(v45 + 8) = v39;
              v46 = v89;
              sub_1D2A7A4A4(v38, v45 + *(v89 + 20), type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
              v47 = (v45 + *(v46 + 24));
              *v47 = v44;
              v47[1] = v43;
              v48 = v93;
              v94 = v93;
              v50 = *(v93 + 16);
              v49 = *(v93 + 24);
              if (v50 >= v49 >> 1)
              {
                sub_1D2A2CAC0(v49 > 1, v50 + 1, 1);
                v45 = v87;
                v48 = v94;
              }

              *(v48 + 16) = v50 + 1;
              v51 = (*(v88 + 80) + 32) & ~*(v88 + 80);
              v93 = v48;
              sub_1D2A7A4A4(v45, v48 + v51 + *(v88 + 72) * v50, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
              v35 += v90;
              --v34;
              v10 = v41;
              v13 = v31;
              v17 = v86;
            }

            while (v34);
            v29 = v67;
          }

          else
          {

            v93 = MEMORY[0x1E69E7CC0];
          }

          v53 = v29;

          sub_1D2A75E2C(&v99);
          v52 = v72 & 0x101 | 0x2000000000000000;
          v54 = &v97;
          goto LABEL_25;
        }

        v55 = *v101;
        v56 = v102;
        sub_1D2A75DD0(&v99, &v94);
        v53 = v29;
        sub_1D2A479A0(v28, v29);
        v93 = v31;
        sub_1D2A479A0(v31, v30);
        sub_1D2A479A0(v55, v83);
        v57 = v68;
        sub_1D2AC5F84();
        v31 = sub_1D2AC5F64();
        v29 = v58;
        (*v66)(v57, v17);
        sub_1D2A75E2C(&v99);
        if (v56)
        {
          v52 = 0x4000000000000100;
        }

        else
        {
          v52 = 0x4000000000000000;
        }
      }

      else
      {
        v52 = v69 & 0x101;
        v53 = *(&v99 + 1);

        v69 = v52;
      }

LABEL_26:
      result = v81;
      v104 = v81;
      v60 = *(v81 + 16);
      v59 = *(v81 + 24);
      v61 = v82;
      if (v60 >= v59 >> 1)
      {
        sub_1D2A2CA88((v59 > 1), v60 + 1, 1);
        v61 = v82;
        result = v104;
      }

      v22 = v61 + 1;
      *(result + 16) = v60 + 1;
      v62 = result + 88 * v60;
      *(v62 + 32) = v80;
      *(v62 + 40) = v53;
      *(v62 + 48) = v93;
      *(v62 + 56) = v79;
      *(v62 + 64) = v77;
      *(v62 + 72) = v83;
      *(v62 + 88) = v78;
      *(v62 + 96) = v52;
      *(v62 + 104) = v31;
      *(v62 + 112) = v29;
      if (v22 == v75)
      {
        return result;
      }
    }

    if (v33 == 3)
    {
      v52 = v70 & 0x101 | 0x6000000000000000;
      v53 = *(&v99 + 1);

      v93 = v31;
      sub_1D2A479B4(v31, v30);
      v54 = &v95;
    }

    else if (v33 == 4)
    {
      v93 = v100;
      v52 = v71 & 0x101 | 0x8000000000000000;

      v53 = v29;

      sub_1D2A479A0(v32, v83);
      v54 = &v96;
    }

    else
    {
      v52 = v73 & 0x101 | 0xA000000000000000;
      v53 = *(&v99 + 1);

      v54 = &v98;
    }

LABEL_25:
    *(v54 - 32) = v52;
    goto LABEL_26;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2A79A64(uint64_t a1, uint64_t a2, int a3)
{
  v64[1] = a3;
  v65 = a2;
  v4 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity(0);
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
  v89 = *(v90 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2AC5F94();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v69 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v88 = v16;
    v105 = MEMORY[0x1E69E7CC0];
    sub_1D2A2CB04(0, v21, 0);
    v22 = 0;
    result = v105;
    v75 = a1 + 32;
    v67 = (v18 + 8);
    v86 = (v18 + 48);
    v85 = (v18 + 56);
    v77 = (v18 + 32);
    v76 = v21;
    v87 = v17;
    while (1)
    {
      v24 = (v75 + 88 * v22);
      v25 = v24[1];
      v100 = *v24;
      v101 = v25;
      v26 = v24[3];
      *v102 = v24[2];
      v27 = v24[4];
      *&v102[16] = v26;
      v103 = v27;
      v104 = *(v24 + 10);
      v29 = *(&v100 + 1);
      v28 = v100;
      v30 = *(&v101 + 1);
      v31 = v101;
      v84 = *&v102[8];
      v83 = *v102;
      v32 = WORD3(v27) >> 13;
      v82 = v22;
      v81 = result;
      v80 = v100;
      v79 = *(&v101 + 1);
      v78 = *(&v26 + 1);
      if (v32 > 2)
      {
        break;
      }

      if (v32)
      {
        if (v32 != 1)
        {
          v54 = *(&v101 + 1);
          v55 = BYTE1(v103);
          v56 = v103;
          sub_1D2A75E80(&v100, &v95);
          v52 = v29;
          sub_1D2A479A0(v28, v29);
          v94 = v31;
          sub_1D2A479A0(v31, v54);
          sub_1D2A479A0(v83, v84);
          v57 = v69;
          sub_1D2AC5F84();
          v31 = sub_1D2AC5F64();
          v29 = v58;
          (*v67)(v57, v17);
          sub_1D2A75EDC(&v100);
          v59 = 0x4000000000000100;
          if (v55)
          {
            v59 = 0x4000000000010100;
          }

          v51 = v59 | v56 & 1;
          goto LABEL_26;
        }

        v33 = *(v101 + 16);
        if (v33)
        {
          v95 = MEMORY[0x1E69E7CC0];
          v68 = *(&v100 + 1);

          sub_1D2A2CB3C(0, v33, 0);
          v34 = v31 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
          v91 = *(v66 + 72);
          v94 = v95;
          do
          {
            sub_1D2A7A3DC(v34, v13, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
            v35 = v93;
            sub_1D2A7A3DC(v13 + *(v10 + 20), v93, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
            v36 = (*v86)(v35, 2, v17);
            if (!v36)
            {
              (*v77)(v92, v93, v17);
            }

            v37 = v92;
            (*v85)(v92, v36, 2, v17);
            v39 = *v13;
            v38 = v13[1];
            v40 = v10;
            v41 = (v13 + *(v10 + 24));
            v43 = *v41;
            v42 = v41[1];

            v31 = v13;
            sub_1D2A7A444(v13, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
            v44 = v88;
            *v88 = v39;
            *(v44 + 8) = v38;
            v45 = v90;
            sub_1D2A7A4A4(v37, v44 + *(v90 + 20), type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
            v46 = (v44 + *(v45 + 24));
            *v46 = v43;
            v46[1] = v42;
            v47 = v94;
            v95 = v94;
            v49 = *(v94 + 16);
            v48 = *(v94 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_1D2A2CB3C(v48 > 1, v49 + 1, 1);
              v44 = v88;
              v47 = v95;
            }

            *(v47 + 16) = v49 + 1;
            v50 = (*(v89 + 80) + 32) & ~*(v89 + 80);
            v94 = v47;
            sub_1D2A7A4A4(v44, v47 + v50 + *(v89 + 72) * v49, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
            v34 += v91;
            --v33;
            v10 = v40;
            v13 = v31;
            v17 = v87;
          }

          while (v33);
          v29 = v68;
        }

        else
        {

          v94 = MEMORY[0x1E69E7CC0];
        }

        v52 = v29;

        sub_1D2A75EDC(&v100);
        v51 = *&v73 & 0x10301 | 0x2000000000000000;
        v53 = &v98;
        goto LABEL_25;
      }

      v51 = v70 & 0x10301;
      v52 = *(&v100 + 1);

      v70 = v51;
LABEL_26:
      result = v81;
      v105 = v81;
      v61 = *(v81 + 16);
      v60 = *(v81 + 24);
      v62 = v82;
      if (v61 >= v60 >> 1)
      {
        sub_1D2A2CB04((v60 > 1), v61 + 1, 1);
        v62 = v82;
        result = v105;
      }

      v22 = v62 + 1;
      *(result + 16) = v61 + 1;
      v63 = result + 88 * v61;
      *(v63 + 32) = v80;
      *(v63 + 40) = v52;
      *(v63 + 48) = v94;
      *(v63 + 56) = v79;
      *(v63 + 64) = v83;
      *(v63 + 72) = v84;
      *(v63 + 88) = v78;
      *(v63 + 96) = v51;
      *(v63 + 104) = v31;
      *(v63 + 112) = v29;
      if (v22 == v76)
      {
        return result;
      }
    }

    if (v32 == 3)
    {
      v51 = v71 & 0x10301 | 0x6000000000000000;
      v52 = *(&v100 + 1);

      v94 = v31;
      sub_1D2A479B4(v31, v30);
      v53 = &v96;
    }

    else if (v32 == 4)
    {
      v94 = v101;
      v51 = v72 & 0x10301 | 0x8000000000000000;

      v52 = v29;

      sub_1D2A479A0(v83, v84);
      v53 = &v97;
    }

    else
    {
      v51 = *&v74 & 0x10301 | 0xA000000000000000;
      v52 = *(&v100 + 1);

      v53 = &v99;
    }

LABEL_25:
    *(v53 - 32) = v51;
    goto LABEL_26;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2A7A384(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2AC7354() & 1;
  }
}

uint64_t sub_1D2A7A3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A7A444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2A7A4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D2A7A50C()
{
  sub_1D2A7A564();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC728B78 = result;
  return result;
}

unint64_t sub_1D2A7A564()
{
  result = qword_1EC703B30;
  if (!qword_1EC703B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC703B30);
  }

  return result;
}

uint64_t GPExportablePhotoAsset.identifier.getter()
{
  v1 = [v0 _identifier];
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v3;
}

id sub_1D2A7A73C(void *a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = a1;
  v9 = [v8 *a3];
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();

  sub_1D2A20764(0, a4, a5);
  swift_dynamicCast();

  return v11;
}

uint64_t sub_1D2A7A804(SEL *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = [v3 *a1];
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2A20764(0, a2, a3);
  swift_dynamicCast();
  return v8;
}

uint64_t GPExportablePhotoAsset.creationDate.getter()
{
  v1 = [v0 _creationDate];
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2AC5F54();
  return swift_dynamicCast();
}

id sub_1D2A7AAA4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D2A20708(a1 + *a3, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1D2AC7344();
  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}

uint64_t GPExportablePhotoAsset.recipeData.getter()
{
  if ([v0 _recipeData])
  {
    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for GPGenerationRecipeData();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D2A61410(v5);
    return 0;
  }
}

id GPExportablePhotoAsset.init(identifier:imageURLWrapper:previewImage:pixelWidth:pixelHeight:creationDate:recipeData:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_1D2AC6BF4();

  v16 = sub_1D2AC5F34();
  v17 = [v14 initWithIdentifier:v15 imageURLWrapper:a3 previewImage:a4 pixelWidth:a5 pixelHeight:a6 creationDate:v16 recipeData:a8];

  v18 = sub_1D2AC5F54();
  (*(*(v18 - 8) + 8))(a7, v18);
  return v17;
}

id GPExportablePhotoAsset.init(identifier:imageURLWrapper:previewImage:pixelWidth:pixelHeight:creationDate:recipeData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = &v8[OBJC_IVAR___GPExportablePhotoAsset__identifier];
  *(v15 + 3) = MEMORY[0x1E69E6158];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v8[OBJC_IVAR___GPExportablePhotoAsset__imageURLWrapper];
  *(v16 + 3) = sub_1D2A20764(0, &qword_1EC704C50, 0x1E696AE98);
  *v16 = a3;
  v17 = &v8[OBJC_IVAR___GPExportablePhotoAsset__previewImage];
  *(v17 + 3) = sub_1D2A20764(0, &qword_1EC704C58, 0x1E69DCAB8);
  *v17 = a4;
  *&v8[OBJC_IVAR___GPExportablePhotoAsset_pixelWidth] = a5;
  *&v8[OBJC_IVAR___GPExportablePhotoAsset_pixelHeight] = a6;
  v18 = &v8[OBJC_IVAR___GPExportablePhotoAsset__creationDate];
  v19 = sub_1D2AC5F54();
  v18[3] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  v21 = *(v19 - 8);
  (*(v21 + 16))(boxed_opaque_existential_0, a7, v19);
  v22 = 0;
  if (a8)
  {
    v22 = type metadata accessor for GPGenerationRecipeData();
  }

  v23 = &v8[OBJC_IVAR___GPExportablePhotoAsset__recipeData];
  *v23 = a8;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0;
  *(v23 + 3) = v22;
  v26.receiver = v8;
  v26.super_class = GPExportablePhotoAsset;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  (*(v21 + 8))(a7, v19);
  return v24;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id GPExportablePhotoAsset.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void __swiftcall GPRecipe.init(promptElements:)(GPRecipe *__return_ptr retstr, Swift::OpaquePointer promptElements)
{
  v3 = type metadata accessor for ImagePlaygroundConcept(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(promptElements._rawValue + 2);
  if (v8)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D2AC7104();
    v9 = promptElements._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1D2A7B474(v9, v7);
      sub_1D2A49C68(0);
      sub_1D2A7B4D8(v7);
      sub_1D2AC70E4();
      v11 = *(v15 + 16);
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D2A7A564();
  v13 = sub_1D2AC6D24();

  [v12 initWithPromptElements_];
}

uint64_t sub_1D2A7B474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A7B4D8(uint64_t a1)
{
  v2 = type metadata accessor for ImagePlaygroundConcept(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall GPRecipe.init(promptElements:sourceImage:)(GPRecipe *__return_ptr retstr, Swift::OpaquePointer promptElements, UIImage_optional sourceImage)
{
  isa = sourceImage.value.super.isa;
  v5 = type metadata accessor for ImagePlaygroundConcept(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(promptElements._rawValue + 2);
  if (v10)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D2AC7104();
    v11 = promptElements._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_1D2A7B474(v11, v9);
      sub_1D2A49C68(0);
      sub_1D2A7B4D8(v9);
      sub_1D2AC70E4();
      v13 = *(v17 + 16);
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D2A7A564();
  v15 = sub_1D2AC6D24();

  [v14 initWithPromptElements_];
}

BOOL GPRecipe.containsPhoto.getter()
{
  v1 = [v0 promptElements];
  sub_1D2A7A564();
  v2 = sub_1D2AC6D34();

  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_1D2AC7024();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {

      return v3 != v5;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D38A74D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v6 image];
    if (v8)
    {
      break;
    }

    v9 = [v7 pixelBuffer];

    v4 = v5 + 1;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  v9 = v8;

LABEL_15:

  return v3 != v5;
}

uint64_t GPRecipe.containsDrawing.getter()
{
  v1 = sub_1D2AC6B84();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F28, &qword_1D2ACAA58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v9 = [v0 promptElements];
  sub_1D2A7A564();
  v10 = sub_1D2AC6D34();

  v25 = v4;
  if (v10 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2AC7024())
  {
    v12 = 0;
    v13 = (v26 + 56);
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D38A74D0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v14 drawing];
      if (v17)
      {
        v18 = v17;

        v19 = v25;
        sub_1D2AC6B74();

        v20 = v26 + 32;
        v21 = v19;
        v22 = v27;
        (*(v26 + 32))(v8, v21, v27);
        (*(v20 + 24))(v8, 0, 1, v22);
        sub_1D2A7BAEC(v8);
        return 1;
      }

      (*v13)(v8, 1, 1, v27);
      sub_1D2A7BAEC(v8);
      ++v12;
      if (v16 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_1D2A7BAEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F28, &qword_1D2ACAA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ImagePlayground::ImagePlaygroundPersonalizationPolicy_optional __swiftcall ImagePlaygroundPersonalizationPolicy.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

CGColorSpace *CGImageRef.renderOnOpaqueBackground(gray:)(CGFloat a1)
{
  Image = v1;
  AlphaInfo = CGImageGetAlphaInfo(v1);
  if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
  {
    v5 = v1;
    return Image;
  }

  Width = CGImageGetWidth(v1);
  result = CGImageGetHeight(Image);
  if ((Width - 0x2000000000000000) >> 62 == 3)
  {
    v8 = result;
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (result)
    {
      v9 = result;
      v10 = __CGBitmapContextCreate_0(Width, v8, 4 * Width, result);

      if (!v10)
      {
        return 0;
      }

      v11 = CGImageGetWidth(Image);
      Height = CGImageGetHeight(Image);
      CGContextSetGrayFillColor(v10, a1, 1.0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045F8, &qword_1D2ACB910);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D2AC95B0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = v11;
      *(v13 + 56) = Height;
      sub_1D2AC6E64();

      sub_1D2AC6E54();
      Image = CGBitmapContextCreateImage(v10);

      return Image;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGImageRef_optional __swiftcall CGImageRef.renderOnTop(of:)(CGImageRef of)
{
  Width = CGImageGetWidth(of);
  Height = CGImageGetHeight(of);
  v5 = CGImageGetWidth(v1);
  v6 = CGImageGetHeight(v1);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v18.size.width = Width;
  v18.size.height = Height;
  v21.size.width = v5;
  v21.size.height = v6;
  v19 = CGRectUnion(v18, v21);
  x = v19.origin.x;
  y = v19.origin.y;
  v9 = v19.size.width;
  v10 = v19.size.height;
  v12 = CGRectGetWidth(v19);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = v9;
  v20.size.height = v10;
  v13 = CGRectGetHeight(v20);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v12 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result.value = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  if (!result.value)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  value = result.value;
  v15 = __CGBitmapContextCreate_0(v12, v13, 4 * v12, result.value);

  if (!v15)
  {
    return 0;
  }

  CGContextSetGrayFillColor(v15, 1.0, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045F8, &qword_1D2ACB910);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D2AC95B0;
  *(v16 + 32) = x;
  *(v16 + 40) = y;
  *(v16 + 48) = v9;
  *(v16 + 56) = v10;
  sub_1D2AC6E64();

  sub_1D2AC6E54();
  sub_1D2AC6E54();
  Image = CGBitmapContextCreateImage(v15);

  return Image;
}