uint64_t HKCloudSync.Show.SyncIdentity.description.getter()
{
  v1 = v0;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
  v6 = sub_191CC7398();
  MEMORY[0x193B01F90](58, 0xE100000000000000);
  v2 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v3 = v0 + *(v2 + 20);
  v4 = sub_191CC7398();
  MEMORY[0x193B01F90](v4);

  MEMORY[0x193B01F90](58, 0xE100000000000000);
  MEMORY[0x193B01F90](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v6;
}

uint64_t sub_191C5FC60(uint64_t a1)
{
  *&v24[0] = sub_191C42460(a1);

  sub_191C60E08(v24);

  v2 = *&v24[0];
  v3 = *(*&v24[0] + 16);
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v3, 0);
    v4 = 0;
    v5 = (v2 + 80);
    v20 = v2;
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 2);
      v24[0] = *(v5 - 3);
      v24[1] = v9;
      v25 = v7;
      v22 = v6;

      swift_bridgeObjectRetain_n();
      MEMORY[0x193B01F90](58, 0xE100000000000000);
      if (!*(a1 + 16))
      {
        goto LABEL_11;
      }

      v10 = sub_191C40354(v24);
      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      v21 = *(*(a1 + 56) + 8 * v10);
      v12 = sub_191CC7398();
      MEMORY[0x193B01F90](v12);

      v14 = v23[2];
      v13 = v23[3];
      if (v14 >= v13 >> 1)
      {
        sub_191C07DDC((v13 > 1), v14 + 1, 1);
      }

      ++v4;
      v23[2] = v14 + 1;
      v15 = &v23[2 * v14];
      v15[4] = v22;
      v15[5] = v8;
      v5 += 7;
      v2 = v20;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_191C62758();
    v16 = sub_191CC66D8();
    v18 = v17;

    MEMORY[0x193B01F90](v16, v18);

    MEMORY[0x193B01F90](32010, 0xE200000000000000);
    return 2683;
  }

  return result;
}

uint64_t HKCloudSync.Show.ShardPredicate.description.getter()
{
  v1 = v0;
  v2 = sub_191CC6148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C47DA4(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v29 - v15;
  v17 = v0[1];
  v29[0] = *v0;
  v29[1] = v17;

  MEMORY[0x193B01F90](23328, 0xE200000000000000);
  v18 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  sub_191C622F4(v0 + *(v18 + 20), v16, sub_191C47DA4);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    v20 = 0xE600000000000000;
    v21 = 0x3E656E6F6E3CLL;
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    v22 = sub_191CC6068();
    v20 = v23;
    (*(v3 + 8))(v7, v2);
    v21 = v22;
  }

  MEMORY[0x193B01F90](v21, v20);

  MEMORY[0x193B01F90](58, 0xE100000000000000);
  sub_191C622F4(v1 + *(v18 + 24), v13, sub_191C47DA4);
  if (v19(v13, 1, v2) == 1)
  {
    v24 = 0xE600000000000000;
    v25 = 0x3E656E6F6E3CLL;
  }

  else
  {
    (*(v3 + 32))(v7, v13, v2);
    v26 = sub_191CC6068();
    v24 = v27;
    (*(v3 + 8))(v7, v2);
    v25 = v26;
  }

  MEMORY[0x193B01F90](v25, v24);

  MEMORY[0x193B01F90](93, 0xE100000000000000);
  return v29[0];
}

uint64_t sub_191C601E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v34, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v28 = a2;
    v29 = v2;
    v37 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v11, 0);
    v12 = v37;
    v13 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v32 = "| Reference Identifier: ";
    v33 = "\nSchema Version: ";
    v30 = *(v5 + 72);
    v31 = " | Schema Identifier: ";
    do
    {
      sub_191C622F4(v13, v9, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000018, v33 | 0x8000000000000000);
      sub_191CC61A8();
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
      v14 = sub_191CC7398();
      MEMORY[0x193B01F90](v14);

      MEMORY[0x193B01F90](0xD000000000000016, v32 | 0x8000000000000000);
      v15 = v34;
      MEMORY[0x193B01F90](*&v9[*(v34 + 20)], *&v9[*(v34 + 20) + 8]);
      MEMORY[0x193B01F90](0xD000000000000012, v31 | 0x8000000000000000);
      v16 = *(v15 + 24);
      sub_191CC6148();
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
      v17 = sub_191CC7398();
      MEMORY[0x193B01F90](v17);

      v18 = v35;
      v19 = v36;
      sub_191C48D60(v9, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
      v37 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_191C07DDC((v20 > 1), v21 + 1, 1);
        v12 = v37;
      }

      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v13 += v30;
      --v11;
    }

    while (v11);
    a2 = v28;
  }

  v35 = v12;
  sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_191C62758();
  v23 = sub_191CC66D8();
  v25 = v24;

  *a2 = v23;
  a2[1] = v25;
  return result;
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.description.getter()
{
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000018, 0x8000000191D2D530);
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
  v1 = sub_191CC7398();
  MEMORY[0x193B01F90](v1);

  MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D550);
  v2 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  MEMORY[0x193B01F90](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D570);
  v3 = *(v2 + 24);
  sub_191CC6148();
  sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
  v4 = sub_191CC7398();
  MEMORY[0x193B01F90](v4);

  return 0;
}

uint64_t sub_191C606F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = type metadata accessor for HKCloudSync.Show.Log(0);
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27, v7);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v25[0] = a2;
    v25[1] = v2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v11, 0);
    v12 = v30;
    v13 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v26 = *(v5 + 72);
    do
    {
      sub_191C622F4(v13, v9, type metadata accessor for HKCloudSync.Show.Log);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_191CC6FC8();

      v28 = 0x3A746E657645207CLL;
      v29 = 0xE900000000000020;
      MEMORY[0x193B01F90](*v9, v9[1]);
      MEMORY[0x193B01F90](0x53656D6954207C20, 0xEE00203A706D6174);
      v14 = *(v27 + 20);
      sub_191CC6148();
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
      v15 = sub_191CC7398();
      MEMORY[0x193B01F90](v15);

      v16 = v28;
      v17 = v29;
      sub_191C48D60(v9, type metadata accessor for HKCloudSync.Show.Log);
      v30 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_191C07DDC((v18 > 1), v19 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v13 += v26;
      --v11;
    }

    while (v11);
    a2 = v25[0];
  }

  v28 = v12;
  sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_191C62758();
  v21 = sub_191CC66D8();
  v23 = v22;

  *a2 = v21;
  a2[1] = v23;
  return result;
}

uint64_t HKCloudSync.Show.Log.description.getter()
{
  sub_191CC6FC8();

  MEMORY[0x193B01F90](*v0, v0[1]);
  MEMORY[0x193B01F90](0x53656D6954207C20, 0xEE00203A706D6174);
  v1 = *(type metadata accessor for HKCloudSync.Show.Log(0) + 20);
  sub_191CC6148();
  sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
  v2 = sub_191CC7398();
  MEMORY[0x193B01F90](v2);

  return 0x3A746E657645207CLL;
}

uint64_t sub_191C60AF4(uint64_t a1)
{
  v3 = v1;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
  v7 = sub_191CC7398();
  MEMORY[0x193B01F90](58, 0xE100000000000000);
  v4 = v1 + *(a1 + 20);
  v5 = sub_191CC7398();
  MEMORY[0x193B01F90](v5);

  MEMORY[0x193B01F90](58, 0xE100000000000000);
  MEMORY[0x193B01F90](*(v3 + *(a1 + 24)), *(v3 + *(a1 + 24) + 8));
  return v7;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v7 = v0[3];
  v8 = v0[4];

  MEMORY[0x193B01F90](91, 0xE100000000000000);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v1 = 1852399981;
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v1, v4);

  MEMORY[0x193B01F90](40, 0xE100000000000000);
  v5 = sub_191CC7398();
  MEMORY[0x193B01F90](v5);

  MEMORY[0x193B01F90](23849, 0xE200000000000000);
  return v7;
}

uint64_t HKCloudSync.Show.SyncEntityVersion.description.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  sub_191CC6FC8();
  v9 = v0[1];
  v8 = *v0;
  v4 = HKCloudSync.Show.SyncEntityIdentifier.description.getter();

  MEMORY[0x193B01F90](0x203A6E696D28203ALL, 0xE800000000000000);
  v5 = sub_191CC7398();
  MEMORY[0x193B01F90](v5);

  MEMORY[0x193B01F90](0x203A727563202CLL, 0xE700000000000000);
  v6 = sub_191CC7398();
  MEMORY[0x193B01F90](v6);

  MEMORY[0x193B01F90](41, 0xE100000000000000);
  return v4;
}

uint64_t sub_191C60E08(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_191C61AE0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_191C60E74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_191C60E74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_191CC7388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_191C085B0();
        v5 = sub_191CC6928();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_191C6106C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_191C60F70(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_191C60F70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 56 * v4;
    result = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 40) && v10 == *(v12 + 48);
      if (v13 || (result = sub_191CC73E8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 88);
      result = *(v12 + 96);
      v10 = *(v12 + 104);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 56) = *v12;
      v17 = *(v12 + 72);
      *(v12 + 72) = v16;
      *(v12 + 88) = *(v12 + 32);
      *(v12 + 104) = *(v12 + 48);
      *v12 = v15;
      *(v12 + 16) = v17;
      *(v12 + 32) = v14;
      *(v12 + 40) = result;
      *(v12 + 48) = v10;
      v12 -= 56;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_191C6106C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v104 = *v104;
    if (!v104)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_191C619D4(v8);
      v8 = result;
    }

    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v98 = &v8[16 * v96];
        v5 = *v98;
        v99 = &v95[2 * v96];
        v100 = v99[1];
        sub_191C61690((v97 + 56 * *v98), (v97 + 56 * *v99), v97 + 56 * v100, v104);
        if (v4)
        {
        }

        if (v100 < v5)
        {
          goto LABEL_129;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_130;
        }

        *v98 = v5;
        *(v98 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_131;
        }

        v96 = *v95 - 1;
        result = memmove(v99, v99 + 2, 16 * v101);
        *v95 = v96;
        v5 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 56 * v7;
      result = *(v11 + 40);
      v12 = *(v11 + 48);
      v13 = *v5 + 56 * v9;
      if (result == *(v13 + 40) && v12 == *(v13 + 48))
      {
        v15 = 0;
      }

      else
      {
        result = sub_191CC73E8();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 56 * v9 + 160);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 8) && *v16 == *(v16 - 7))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_191CC73E8();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 7;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 56 * v7 - 56;
          v19 = 56 * v9;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v31 + v19);
              v24 = *(v31 + v19 + 16);
              v23 = *(v31 + v19 + 32);
              v25 = (v31 + v18);
              v26 = *(v22 + 6);
              v27 = *v22;
              v29 = v25[1];
              v28 = v25[2];
              v30 = *v25;
              *(v22 + 6) = *(v25 + 6);
              v22[1] = v29;
              v22[2] = v28;
              *v22 = v30;
              *v25 = v27;
              v25[1] = v24;
              v25[2] = v23;
              *(v25 + 6) = v26;
            }

            ++v21;
            v18 -= 56;
            v19 += 56;
          }

          while (v21 < v20);
        }
      }
    }

    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = v9 + a4;
        }

        if (v33 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_191C0775C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_191C0775C((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_120;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_127;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_88:
        if (v75)
        {
          goto LABEL_122;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_95:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_191C61690((*v5 + 56 * v92), (*v5 + 56 * *&v8[16 * v53 + 32]), *v5 + 56 * v93, v52);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_191C619D4(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        result = sub_191C61948(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v34 = *v5;
  v35 = *v5 + 56 * v7 - 56;
  v102 = v9;
  v36 = v9 - v7;
LABEL_43:
  v37 = v34 + 56 * v7;
  v38 = *(v37 + 40);
  v39 = *(v37 + 48);
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = v38 == *(v41 + 40) && v39 == *(v41 + 48);
    if (v42 || (result = sub_191CC73E8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 != v33)
      {
        goto LABEL_43;
      }

      v7 = v33;
      v5 = a3;
      v9 = v102;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v43 = *(v41 + 88);
    v38 = *(v41 + 96);
    v39 = *(v41 + 104);
    v44 = *(v41 + 56);
    v45 = *(v41 + 16);
    *(v41 + 56) = *v41;
    v46 = *(v41 + 72);
    *(v41 + 72) = v45;
    *(v41 + 88) = *(v41 + 32);
    *(v41 + 104) = *(v41 + 48);
    *v41 = v44;
    *(v41 + 16) = v46;
    *(v41 + 32) = v43;
    *(v41 + 40) = v38;
    *(v41 + 48) = v39;
    v41 -= 56;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_191C61690(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 5) == *(v4 + 5) && *(v6 + 6) == *(v4 + 6);
      if (!v17 && (sub_191CC73E8() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v17 = v7 == v4;
      v4 += 56;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v17 = v7 == v6;
    v6 += 56;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_24:
    v5 -= 56;
    do
    {
      v18 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v18 && (sub_191CC73E8() & 1) != 0)
      {
        v23 = v6 - 56;
        if ((v5 + 56) != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 40);
          v26 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 56, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v19 = v12 - 56;
      if ((v5 + 56) != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 40);
        v22 = *(v12 - 24);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 56;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_39:
  v27 = (v12 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v27])
  {
    memmove(v6, v4, 56 * v27);
  }

  return 1;
}

uint64_t sub_191C61948(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_191C619D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_191C619E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_191C6933C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t _s9HealthKit11HKCloudSyncO4ShowV0D16EntityIdentifierV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (v6)
    {
      v9 = a1[1] == a2[1] && v3 == v6;
      if (v9 || (sub_191CC73E8() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_191CC73E8();
}

unint64_t sub_191C61BB4()
{
  result = qword_1EADCBF78;
  if (!qword_1EADCBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF78);
  }

  return result;
}

unint64_t sub_191C61C08()
{
  result = qword_1EADCBF90;
  if (!qword_1EADCBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF90);
  }

  return result;
}

BOOL _s9HealthKit11HKCloudSyncO4ShowV14ShardPredicateV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_191C47DA4(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v45[-v17];
  sub_191C32324();
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v45[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v45[-v27];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_191CC73E8() & 1) == 0)
  {
    return 0;
  }

  v47 = v15;
  v49 = v25;
  v50 = v9;
  v48 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  v29 = *(v48 + 20);
  v30 = *(v20 + 48);
  sub_191C622F4(a1 + v29, v28, sub_191C47DA4);
  sub_191C622F4(a2 + v29, &v28[v30], sub_191C47DA4);
  v51 = v5;
  v31 = *(v5 + 48);
  if (v31(v28, 1, v4) != 1)
  {
    sub_191C622F4(v28, v18, sub_191C47DA4);
    if (v31(&v28[v30], 1, v4) != 1)
    {
      v33 = v51;
      (*(v51 + 32))(v50, &v28[v30], v4);
      sub_191C46B48(&qword_1EADCADD8, MEMORY[0x1E6969530]);
      v46 = sub_191CC6768();
      v34 = *(v33 + 8);
      v34(v50, v4);
      v34(v18, v4);
      sub_191C48D60(v28, sub_191C47DA4);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v51 + 8))(v18, v4);
LABEL_9:
    v32 = v28;
LABEL_17:
    sub_191C48D60(v32, sub_191C32324);
    return 0;
  }

  if (v31(&v28[v30], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_191C48D60(v28, sub_191C47DA4);
LABEL_11:
  v35 = *(v48 + 24);
  v36 = *(v20 + 48);
  v37 = a1 + v35;
  v38 = v49;
  sub_191C622F4(v37, v49, sub_191C47DA4);
  sub_191C622F4(a2 + v35, v38 + v36, sub_191C47DA4);
  if (v31(v38, 1, v4) == 1)
  {
    if (v31((v38 + v36), 1, v4) == 1)
    {
      sub_191C48D60(v38, sub_191C47DA4);
      return 1;
    }

    goto LABEL_16;
  }

  v39 = v47;
  sub_191C622F4(v38, v47, sub_191C47DA4);
  if (v31((v38 + v36), 1, v4) == 1)
  {
    (*(v51 + 8))(v39, v4);
LABEL_16:
    v32 = v38;
    goto LABEL_17;
  }

  v42 = v50;
  v41 = v51;
  (*(v51 + 32))(v50, v38 + v36, v4);
  sub_191C46B48(&qword_1EADCADD8, MEMORY[0x1E6969530]);
  v43 = sub_191CC6768();
  v44 = *(v41 + 8);
  v44(v42, v4);
  v44(v39, v4);
  sub_191C48D60(v38, sub_191C47DA4);
  return (v43 & 1) != 0;
}

unint64_t sub_191C621F8()
{
  result = qword_1EADCBFA8;
  if (!qword_1EADCBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBFA8);
  }

  return result;
}

unint64_t sub_191C6224C()
{
  result = qword_1EADCBFC8;
  if (!qword_1EADCBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBFC8);
  }

  return result;
}

unint64_t sub_191C622A0()
{
  result = qword_1EADCBFE0;
  if (!qword_1EADCBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBFE0);
  }

  return result;
}

uint64_t sub_191C622F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_191C6235C()
{
  result = qword_1EADCBFF8;
  if (!qword_1EADCBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBFF8);
  }

  return result;
}

unint64_t sub_191C623B0()
{
  result = qword_1EADCC000;
  if (!qword_1EADCC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC000);
  }

  return result;
}

void sub_191C62404(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_191C62454()
{
  result = qword_1EADCC010;
  if (!qword_1EADCC010)
  {
    sub_191C62404(255, &qword_1EADCC008, &type metadata for HKCloudSync.Show.Repository, MEMORY[0x1E69E62F8]);
    sub_191C624F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC010);
  }

  return result;
}

unint64_t sub_191C624F0()
{
  result = qword_1EADCC018;
  if (!qword_1EADCC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC018);
  }

  return result;
}

void sub_191C62544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_191C625AC()
{
  result = qword_1EADCC028;
  if (!qword_1EADCC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC028);
  }

  return result;
}

unint64_t sub_191C62600()
{
  result = qword_1EADCC030;
  if (!qword_1EADCC030)
  {
    sub_191C62404(255, &qword_1EADCC008, &type metadata for HKCloudSync.Show.Repository, MEMORY[0x1E69E62F8]);
    sub_191C6269C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC030);
  }

  return result;
}

unint64_t sub_191C6269C()
{
  result = qword_1EADCC038;
  if (!qword_1EADCC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC038);
  }

  return result;
}

unint64_t sub_191C62758()
{
  result = qword_1EADCAE08;
  if (!qword_1EADCAE08)
  {
    sub_191C62404(255, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAE08);
  }

  return result;
}

uint64_t sub_191C627D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_191C6283C()
{
  result = qword_1EADCC040;
  if (!qword_1EADCC040)
  {
    sub_191C693C0(255, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC040);
  }

  return result;
}

unint64_t sub_191C6290C()
{
  result = qword_1EADCC050;
  if (!qword_1EADCC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC050);
  }

  return result;
}

uint64_t sub_191C629A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C629F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C62A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_191C62A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
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

uint64_t sub_191C62B2C(uint64_t a1, int a2)
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

uint64_t sub_191C62B74(uint64_t result, int a2, int a3)
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

uint64_t sub_191C62BCC(uint64_t a1, int a2)
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

uint64_t sub_191C62C14(uint64_t result, int a2, int a3)
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

uint64_t sub_191C62C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_191C62CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C62D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_191C62D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C62DB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_191C62DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_191C62E84()
{
  sub_191C47DA4(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKCloudSync.Show.RecordDetail(319);
    if (v1 <= 0x3F)
    {
      sub_191C47DD8(319, &qword_1EADCC070, sub_191C46334, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_191C62F88()
{
  sub_191C63120();
  if (v0 <= 0x3F)
  {
    sub_191C52030();
    if (v1 <= 0x3F)
    {
      sub_191C6318C();
      if (v2 <= 0x3F)
      {
        sub_191C63200();
        if (v3 <= 0x3F)
        {
          sub_191C51948(319, v3);
          if (v4 <= 0x3F)
          {
            sub_191C632A0();
            if (v5 <= 0x3F)
            {
              sub_191C5157C(319, v5);
              if (v6 <= 0x3F)
              {
                sub_191C51428(319, v6);
                if (v7 <= 0x3F)
                {
                  sub_191C632E8();
                  if (v8 <= 0x3F)
                  {
                    sub_191C51218(319, v8);
                    if (v9 <= 0x3F)
                    {
                      sub_191C51150();
                      if (v10 <= 0x3F)
                      {
                        sub_191C50FB0();
                        if (v11 <= 0x3F)
                        {
                          sub_191C63360();
                          if (v12 <= 0x3F)
                          {
                            sub_191C50E00(319, v12);
                            if (v13 <= 0x3F)
                            {
                              sub_191C633CC(319, v13);
                              if (v14 <= 0x3F)
                              {
                                sub_191C634F8();
                                if (v15 <= 0x3F)
                                {
                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_191C63120()
{
  if (!qword_1EADCC088)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EADCC088);
    }
  }
}

void sub_191C6318C()
{
  if (!qword_1EADCC090)
  {
    sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC090);
    }
  }
}

void sub_191C63200()
{
  if (!qword_1EADCC098)
  {
    sub_191C693C0(255, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    sub_191C51B48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCC098);
    }
  }
}

void sub_191C632A0()
{
  if (!qword_1EADCC0A0)
  {
    v0 = sub_191CC61A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC0A0);
    }
  }
}

void sub_191C632E8()
{
  if (!qword_1EADCC0A8)
  {
    sub_191C47DD8(0, &qword_1EADCC0B0, sub_191C5132C, MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC0A8);
    }
  }
}

void sub_191C63360()
{
  if (!qword_1EADCC0B8)
  {
    sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC0B8);
    }
  }
}

void sub_191C633CC(uint64_t a1, uint64_t a2)
{
  if (!qword_1EADCC0C0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_191C62404(255, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCC0C0);
    }
  }
}

uint64_t sub_191C634F8()
{
  result = qword_1EADCC0C8;
  if (!qword_1EADCC0C8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EADCC0C8);
  }

  return result;
}

uint64_t sub_191C63550()
{
  result = sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191C635CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C63614(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_191C6366C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C636B4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_191C63738()
{
  sub_191C47DA4(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_191C637DC()
{
  result = sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    result = sub_191CC6148();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_91Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_92Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_191C639E8()
{
  result = sub_191CC6148();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s4ShowV12RecordDetailO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4ShowV12RecordDetailO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s4ShowV12RecordDetailO18SequenceCodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4ShowV12RecordDetailO18SequenceCodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s4ShowV12RecordDetailO15StoreCodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4ShowV12RecordDetailO15StoreCodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodedQueryDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EncodedQueryDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_191C64188()
{
  result = qword_1EADCC110;
  if (!qword_1EADCC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC110);
  }

  return result;
}

unint64_t sub_191C641E0()
{
  result = qword_1EADCC118;
  if (!qword_1EADCC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC118);
  }

  return result;
}

unint64_t sub_191C64238()
{
  result = qword_1EADCC120;
  if (!qword_1EADCC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC120);
  }

  return result;
}

unint64_t sub_191C64290()
{
  result = qword_1EADCC128;
  if (!qword_1EADCC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC128);
  }

  return result;
}

unint64_t sub_191C642E8()
{
  result = qword_1EADCC130;
  if (!qword_1EADCC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC130);
  }

  return result;
}

unint64_t sub_191C64340()
{
  result = qword_1EADCC138;
  if (!qword_1EADCC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC138);
  }

  return result;
}

unint64_t sub_191C64398()
{
  result = qword_1EADCC140;
  if (!qword_1EADCC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC140);
  }

  return result;
}

unint64_t sub_191C643F0()
{
  result = qword_1EADCC148;
  if (!qword_1EADCC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC148);
  }

  return result;
}

unint64_t sub_191C64448()
{
  result = qword_1EADCC150;
  if (!qword_1EADCC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC150);
  }

  return result;
}

unint64_t sub_191C644A0()
{
  result = qword_1EADCC158;
  if (!qword_1EADCC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC158);
  }

  return result;
}

unint64_t sub_191C644F8()
{
  result = qword_1EADCC160;
  if (!qword_1EADCC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC160);
  }

  return result;
}

unint64_t sub_191C64550()
{
  result = qword_1EADCC168;
  if (!qword_1EADCC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC168);
  }

  return result;
}

unint64_t sub_191C645A8()
{
  result = qword_1EADCC170;
  if (!qword_1EADCC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC170);
  }

  return result;
}

unint64_t sub_191C64600()
{
  result = qword_1EADCC178;
  if (!qword_1EADCC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC178);
  }

  return result;
}

unint64_t sub_191C64658()
{
  result = qword_1EADCC180;
  if (!qword_1EADCC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC180);
  }

  return result;
}

unint64_t sub_191C646B0()
{
  result = qword_1EADCC188;
  if (!qword_1EADCC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC188);
  }

  return result;
}

unint64_t sub_191C64708()
{
  result = qword_1EADCC190;
  if (!qword_1EADCC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC190);
  }

  return result;
}

unint64_t sub_191C64760()
{
  result = qword_1EADCC198;
  if (!qword_1EADCC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC198);
  }

  return result;
}

unint64_t sub_191C647B8()
{
  result = qword_1EADCC1A0;
  if (!qword_1EADCC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1A0);
  }

  return result;
}

unint64_t sub_191C64810()
{
  result = qword_1EADCC1A8;
  if (!qword_1EADCC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1A8);
  }

  return result;
}

unint64_t sub_191C64868()
{
  result = qword_1EADCC1B0;
  if (!qword_1EADCC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1B0);
  }

  return result;
}

unint64_t sub_191C648C0()
{
  result = qword_1EADCC1B8;
  if (!qword_1EADCC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1B8);
  }

  return result;
}

unint64_t sub_191C64918()
{
  result = qword_1EADCC1C0;
  if (!qword_1EADCC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1C0);
  }

  return result;
}

unint64_t sub_191C64970()
{
  result = qword_1EADCC1C8;
  if (!qword_1EADCC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1C8);
  }

  return result;
}

unint64_t sub_191C649C8()
{
  result = qword_1EADCC1D0;
  if (!qword_1EADCC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1D0);
  }

  return result;
}

unint64_t sub_191C64A20()
{
  result = qword_1EADCC1D8;
  if (!qword_1EADCC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1D8);
  }

  return result;
}

unint64_t sub_191C64A78()
{
  result = qword_1EADCC1E0;
  if (!qword_1EADCC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1E0);
  }

  return result;
}

unint64_t sub_191C64AD0()
{
  result = qword_1EADCC1E8;
  if (!qword_1EADCC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1E8);
  }

  return result;
}

unint64_t sub_191C64B28()
{
  result = qword_1EADCC1F0;
  if (!qword_1EADCC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1F0);
  }

  return result;
}

unint64_t sub_191C64B80()
{
  result = qword_1EADCC1F8;
  if (!qword_1EADCC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC1F8);
  }

  return result;
}

unint64_t sub_191C64BD8()
{
  result = qword_1EADCC200;
  if (!qword_1EADCC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC200);
  }

  return result;
}

unint64_t sub_191C64C30()
{
  result = qword_1EADCC208;
  if (!qword_1EADCC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC208);
  }

  return result;
}

unint64_t sub_191C64C88()
{
  result = qword_1EADCC210;
  if (!qword_1EADCC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC210);
  }

  return result;
}

unint64_t sub_191C64CE0()
{
  result = qword_1EADCC218;
  if (!qword_1EADCC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC218);
  }

  return result;
}

unint64_t sub_191C64D38()
{
  result = qword_1EADCC220;
  if (!qword_1EADCC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC220);
  }

  return result;
}

unint64_t sub_191C64D90()
{
  result = qword_1EADCC228;
  if (!qword_1EADCC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC228);
  }

  return result;
}

unint64_t sub_191C64DE8()
{
  result = qword_1EADCC230;
  if (!qword_1EADCC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC230);
  }

  return result;
}

unint64_t sub_191C64E40()
{
  result = qword_1EADCC238;
  if (!qword_1EADCC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC238);
  }

  return result;
}

unint64_t sub_191C64E98()
{
  result = qword_1EADCC240;
  if (!qword_1EADCC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC240);
  }

  return result;
}

unint64_t sub_191C64EF0()
{
  result = qword_1EADCC248;
  if (!qword_1EADCC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC248);
  }

  return result;
}

unint64_t sub_191C64F48()
{
  result = qword_1EADCC250;
  if (!qword_1EADCC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC250);
  }

  return result;
}

unint64_t sub_191C64FA0()
{
  result = qword_1EADCC258;
  if (!qword_1EADCC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC258);
  }

  return result;
}

unint64_t sub_191C64FF8()
{
  result = qword_1EADCC260;
  if (!qword_1EADCC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC260);
  }

  return result;
}

unint64_t sub_191C65050()
{
  result = qword_1EADCC268;
  if (!qword_1EADCC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC268);
  }

  return result;
}

unint64_t sub_191C650A8()
{
  result = qword_1EADCC270;
  if (!qword_1EADCC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC270);
  }

  return result;
}

unint64_t sub_191C65100()
{
  result = qword_1EADCC278;
  if (!qword_1EADCC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC278);
  }

  return result;
}

unint64_t sub_191C65158()
{
  result = qword_1EADCC280;
  if (!qword_1EADCC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC280);
  }

  return result;
}

unint64_t sub_191C651B0()
{
  result = qword_1EADCC288;
  if (!qword_1EADCC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC288);
  }

  return result;
}

unint64_t sub_191C65208()
{
  result = qword_1EADCC290;
  if (!qword_1EADCC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC290);
  }

  return result;
}

unint64_t sub_191C65260()
{
  result = qword_1EADCC298;
  if (!qword_1EADCC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC298);
  }

  return result;
}

unint64_t sub_191C652B8()
{
  result = qword_1EADCC2A0;
  if (!qword_1EADCC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2A0);
  }

  return result;
}

unint64_t sub_191C65310()
{
  result = qword_1EADCC2A8;
  if (!qword_1EADCC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2A8);
  }

  return result;
}

unint64_t sub_191C65368()
{
  result = qword_1EADCC2B0;
  if (!qword_1EADCC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2B0);
  }

  return result;
}

unint64_t sub_191C653C0()
{
  result = qword_1EADCC2B8;
  if (!qword_1EADCC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2B8);
  }

  return result;
}

unint64_t sub_191C65418()
{
  result = qword_1EADCC2C0;
  if (!qword_1EADCC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2C0);
  }

  return result;
}

unint64_t sub_191C65470()
{
  result = qword_1EADCC2C8;
  if (!qword_1EADCC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2C8);
  }

  return result;
}

unint64_t sub_191C654C8()
{
  result = qword_1EADCC2D0;
  if (!qword_1EADCC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2D0);
  }

  return result;
}

unint64_t sub_191C65520()
{
  result = qword_1EADCC2D8;
  if (!qword_1EADCC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2D8);
  }

  return result;
}

unint64_t sub_191C65578()
{
  result = qword_1EADCC2E0;
  if (!qword_1EADCC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2E0);
  }

  return result;
}

unint64_t sub_191C655D0()
{
  result = qword_1EADCC2E8;
  if (!qword_1EADCC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2E8);
  }

  return result;
}

unint64_t sub_191C65628()
{
  result = qword_1EADCC2F0;
  if (!qword_1EADCC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2F0);
  }

  return result;
}

unint64_t sub_191C65680()
{
  result = qword_1EADCC2F8;
  if (!qword_1EADCC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC2F8);
  }

  return result;
}

unint64_t sub_191C656D8()
{
  result = qword_1EADCC300;
  if (!qword_1EADCC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC300);
  }

  return result;
}

unint64_t sub_191C65730()
{
  result = qword_1EADCC308;
  if (!qword_1EADCC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC308);
  }

  return result;
}

unint64_t sub_191C65788()
{
  result = qword_1EADCC310;
  if (!qword_1EADCC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC310);
  }

  return result;
}

unint64_t sub_191C657E0()
{
  result = qword_1EADCC318;
  if (!qword_1EADCC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC318);
  }

  return result;
}

unint64_t sub_191C65838()
{
  result = qword_1EADCC320;
  if (!qword_1EADCC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC320);
  }

  return result;
}

unint64_t sub_191C65890()
{
  result = qword_1EADCC328;
  if (!qword_1EADCC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC328);
  }

  return result;
}

unint64_t sub_191C658E8()
{
  result = qword_1EADCC330;
  if (!qword_1EADCC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC330);
  }

  return result;
}

unint64_t sub_191C65940()
{
  result = qword_1EADCC338;
  if (!qword_1EADCC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC338);
  }

  return result;
}

unint64_t sub_191C65998()
{
  result = qword_1EADCC340;
  if (!qword_1EADCC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC340);
  }

  return result;
}

unint64_t sub_191C659F0()
{
  result = qword_1EADCC348;
  if (!qword_1EADCC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC348);
  }

  return result;
}

unint64_t sub_191C65A48()
{
  result = qword_1EADCC350;
  if (!qword_1EADCC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC350);
  }

  return result;
}

unint64_t sub_191C65AA0()
{
  result = qword_1EADCC358;
  if (!qword_1EADCC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC358);
  }

  return result;
}

unint64_t sub_191C65AF8()
{
  result = qword_1EADCC360;
  if (!qword_1EADCC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC360);
  }

  return result;
}

unint64_t sub_191C65B50()
{
  result = qword_1EADCC368;
  if (!qword_1EADCC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC368);
  }

  return result;
}

unint64_t sub_191C65BA8()
{
  result = qword_1EADCC370;
  if (!qword_1EADCC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC370);
  }

  return result;
}

unint64_t sub_191C65C00()
{
  result = qword_1EADCC378;
  if (!qword_1EADCC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC378);
  }

  return result;
}

unint64_t sub_191C65C58()
{
  result = qword_1EADCC380;
  if (!qword_1EADCC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC380);
  }

  return result;
}

unint64_t sub_191C65CB0()
{
  result = qword_1EADCC388;
  if (!qword_1EADCC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC388);
  }

  return result;
}

unint64_t sub_191C65D08()
{
  result = qword_1EADCC390;
  if (!qword_1EADCC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC390);
  }

  return result;
}

unint64_t sub_191C65D60()
{
  result = qword_1EADCC398;
  if (!qword_1EADCC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC398);
  }

  return result;
}

unint64_t sub_191C65DB8()
{
  result = qword_1EADCC3A0;
  if (!qword_1EADCC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3A0);
  }

  return result;
}

unint64_t sub_191C65E10()
{
  result = qword_1EADCC3A8;
  if (!qword_1EADCC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3A8);
  }

  return result;
}

unint64_t sub_191C65E68()
{
  result = qword_1EADCC3B0;
  if (!qword_1EADCC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3B0);
  }

  return result;
}

unint64_t sub_191C65EC0()
{
  result = qword_1EADCC3B8;
  if (!qword_1EADCC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3B8);
  }

  return result;
}

unint64_t sub_191C65F18()
{
  result = qword_1EADCC3C0;
  if (!qword_1EADCC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3C0);
  }

  return result;
}

unint64_t sub_191C65F70()
{
  result = qword_1EADCC3C8;
  if (!qword_1EADCC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3C8);
  }

  return result;
}

unint64_t sub_191C65FC8()
{
  result = qword_1EADCC3D0;
  if (!qword_1EADCC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3D0);
  }

  return result;
}

unint64_t sub_191C66020()
{
  result = qword_1EADCC3D8;
  if (!qword_1EADCC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3D8);
  }

  return result;
}

unint64_t sub_191C66078()
{
  result = qword_1EADCC3E0;
  if (!qword_1EADCC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3E0);
  }

  return result;
}

unint64_t sub_191C660D0()
{
  result = qword_1EADCC3E8;
  if (!qword_1EADCC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3E8);
  }

  return result;
}

unint64_t sub_191C66128()
{
  result = qword_1EADCC3F0;
  if (!qword_1EADCC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3F0);
  }

  return result;
}

unint64_t sub_191C66180()
{
  result = qword_1EADCC3F8;
  if (!qword_1EADCC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC3F8);
  }

  return result;
}

unint64_t sub_191C661D8()
{
  result = qword_1EADCC400;
  if (!qword_1EADCC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC400);
  }

  return result;
}

unint64_t sub_191C66230()
{
  result = qword_1EADCC408;
  if (!qword_1EADCC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC408);
  }

  return result;
}

unint64_t sub_191C66288()
{
  result = qword_1EADCC410;
  if (!qword_1EADCC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC410);
  }

  return result;
}

unint64_t sub_191C662E0()
{
  result = qword_1EADCC418;
  if (!qword_1EADCC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC418);
  }

  return result;
}

unint64_t sub_191C66338()
{
  result = qword_1EADCC420;
  if (!qword_1EADCC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC420);
  }

  return result;
}

unint64_t sub_191C66390()
{
  result = qword_1EADCC428;
  if (!qword_1EADCC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC428);
  }

  return result;
}

unint64_t sub_191C663E8()
{
  result = qword_1EADCC430;
  if (!qword_1EADCC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC430);
  }

  return result;
}

unint64_t sub_191C66440()
{
  result = qword_1EADCC438;
  if (!qword_1EADCC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC438);
  }

  return result;
}

uint64_t sub_191C66494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746974726170 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2D650 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xED00007375746174 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D670 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C66618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D690 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2D6B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C66744(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000191D2D6D0 == a2;
  if (v3 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D6F0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C66874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656E6F7ALL && a2 == 0xE600000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D710 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2D730 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_191C66A2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D750 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697373696D726570 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C66BA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795464726F636572 && a2 == 0xEA00000000006570 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636552646C696863 && a2 == 0xEC0000007364726FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C66DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 5;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C66FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D8D0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2C180 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2D8F0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 6;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_191C67224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4965676E616863 && a2 == 0xEB00000000786564;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2DAF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C67350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E616863 && a2 == 0xE600000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2DB10 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72657473616DLL && a2 == 0xE600000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972747369676572 && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65726F7473 && a2 == 0xE500000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2DB30 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2DB50 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000191D2DB70 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xED0000747865746ELL || (sub_191CC73E8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x654B656369766564 && a2 == 0xEE0065756C615679 || (sub_191CC73E8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x496C61636964656DLL && a2 == 0xE900000000000044 || (sub_191CC73E8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000191D2DB90 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2DBB0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7553646572616873 && a2 == 0xED00007972616D6DLL || (sub_191CC73E8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2DBD0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_191C678A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C679D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746375646F7270 && a2 == 0xEF656D614E657079;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D8B0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F746E6572727563 && a2 == 0xED0000656D614E53 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEC00000079746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_191C67BA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C67CC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v3 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xED000068636F7045 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E4965676E616863 && a2 == 0xEB00000000786564 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2DA10 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2DA30 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2DA50 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000191D2DA70 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E41797469746E65 && a2 == 0xEF70614D726F6863 || (sub_191CC73E8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E416E657A6F7266 && a2 == 0xEF70614D726F6863 || (sub_191CC73E8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2DA90 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_191C68108(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616B636170 && a2 == 0xE700000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2D7B0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2D7D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_191C682C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x8000000191D2D7F0 == a2;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEE00444955556E6FLL || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2D810 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000191D2D830 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D850 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2D870 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2D890 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_191C68604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463417369 && a2 == 0xE800000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2D910 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEA00000000006564 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65644965726F7473 && a2 == 0xEF7265696669746ELL || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65644972656E776FLL && a2 == 0xEF7265696669746ELL || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEC00000079746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646C6968437369 && a2 == 0xE700000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2D930 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x49676E69646E6570 && a2 == 0xEF797469746E6564 || (sub_191CC73E8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2D950 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000191D2D970 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6572506472616873 && a2 == 0xEE00657461636964 || (sub_191CC73E8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000191D2D990 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2D9B0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2D9D0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x71655341746F6C73 && a2 == 0xED000065636E6575 || (sub_191CC73E8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x71655342746F6C73 && a2 == 0xED000065636E6575 || (sub_191CC73E8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2D9F0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_191C68C4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000191D2C100 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C120 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000191D2C140 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_191CC73E8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_191C68D74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000191D2C160 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2C180 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_191CC73E8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_191C68EA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x566D756D696E696DLL && a2 == 0xEE006E6F69737265)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C68FD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C690F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2C180 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C6921C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xEB000000006F666ELL || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7469736F706572 && a2 == 0xEC00000073656972)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

void sub_191C6933C()
{
  if (!qword_1EADCAB18)
  {
    sub_191C693C0(255, &qword_1EADCAB20, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = sub_191CC73A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAB18);
    }
  }
}

void sub_191C693C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_191C69464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  sub_191CC6678();
  sub_191CC6688();
  v14 = *(v6 + 8);
  v14(v10, a3);
  v15 = *(*(a4 + 16) + 8);
  sub_191CC6BA8();
  return (v14)(v13, a3);
}

uint64_t FloatingPoint.bucketed(in:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a2;
  v9 = sub_191CC73B8();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a3 - 8);
  v15 = v36[8];
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v32 - v21;
  v23 = *(*(a4 + 24) + 8);
  if (sub_191CC66E8())
  {
    v32[1] = a5;
    v24 = *(sub_191CC6758() + 36);
    v25 = sub_191CC6718();
    v26 = *(*(*(a4 + 16) + 8) + 8);
    if (v25)
    {
      sub_191CC7148();
      v28 = v33;
      v27 = v34;
      (*(v33 + 104))(v14, *MEMORY[0x1E69E7040], v34);
      sub_191C69464(v14, v35, a3, a4);
      (*(v28 + 8))(v14, v27);
      sub_191CC7138();
      v29 = v36[1];
      ++v36;
      v29(v19, a3);
      return (v29)(v22, a3);
    }

    else
    {
      return sub_191CC7138();
    }
  }

  else
  {
    v31 = v36[2];

    return v31(a5, a1, a3);
  }
}

id HKElectrocardiogramQuery.init(_:dataHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_191C69AC8;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_191C69AD0;
  v11[3] = &block_descriptor_15;
  v8 = _Block_copy(v11);

  v9 = [v6 initWithElectrocardiogram:a1 dataHandler:v8];

  _Block_release(v8);
  return v9;
}

void sub_191C699D0(uint64_t a1, void *a2, char a3, id a4, void (*a5)(uint64_t, id *))
{
  if (a2)
  {
    v10 = a2;
    v11 = 0;
    v9 = a2;
    a5(a1, &v10);
    sub_191C69C68(v10, v11);
    if (a3)
    {
      v10 = 0;
      v11 = 2;
      a5(a1, &v10);
    }

    else
    {
    }
  }

  else if (a4)
  {
    v10 = a4;
    v11 = 1;
    v8 = a4;
    a5(a1, &v10);
    sub_191C69C68(v10, v11);
  }
}

void sub_191C69AD0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v13 = a2;
  v11 = a3;
  v12 = a5;
  v10(v13, a3, a4, a5);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_So24HKElectrocardiogramQueryC9HealthKitE6ResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_191C69BB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_191C69BFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_191C69C40(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_191C69C68(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_191C69C84(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_191CC6BD8();
  if (!v29)
  {
    return sub_191CC6918();
  }

  v51 = v29;
  v55 = sub_191CC70D8();
  v42 = sub_191CC70E8();
  sub_191CC7088();
  result = sub_191CC6BB8();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_191CC6C58();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_191CC70C8();
      result = sub_191CC6BF8();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *QueryStore.init(healthStore:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_191CC61A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC9HealthKit10QueryStore_proxyProvider] = 0;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v21, sel_init);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = v11;
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  sub_191CC67B8();

  sub_191CC6198();
  v15 = objc_allocWithZone(HKTaskServerProxyProvider);
  v16 = sub_191CC6778();

  v17 = sub_191CC6168();
  v18 = [v15 initWithHealthStore:a1 taskIdentifier:v16 exportedObject:v13 taskUUID:v17];

  (*(v6 + 8))(v10, v5);
  v19 = *&v13[OBJC_IVAR____TtC9HealthKit10QueryStore_proxyProvider];
  *&v13[OBJC_IVAR____TtC9HealthKit10QueryStore_proxyProvider] = v18;

  return v13;
}

NSXPCInterface_optional __swiftcall QueryStore.exportedInterface()()
{
  v0 = sub_191C6A2D4(&protocolRef_HKQueryStoreClient);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

NSXPCInterface_optional __swiftcall QueryStore.remoteInterface()()
{
  v0 = sub_191C6A2D4(&protocolRef_HKQueryStoreServer);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id sub_191C6A2D4(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol_];

  return v1;
}

id sub_191C6A33C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

void sub_191C6A398(uint64_t a1, uint64_t a2, void *a3)
{
  sub_191C6D5DC();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = *(a2 + OBJC_IVAR____TtC9HealthKit10QueryStore_proxyProvider);
  if (v11)
  {
    v23 = *(v8 + 16);
    v23(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v22 = a1;
    v12 = *(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    v21 = a3;
    v14 = *(v8 + 32);
    v14(v13 + ((v12 + 24) & ~v12), &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v29 = sub_191C6D64C;
    v30 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_191C707AC;
    v28 = &block_descriptor_16;
    v24 = _Block_copy(&aBlock);
    v15 = v11;
    v16 = v21;

    v23(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v17 = (v12 + 16) & ~v12;
    v18 = swift_allocObject();
    v14(v18 + v17, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v29 = sub_191C6D6D8;
    v30 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_191C7081C;
    v28 = &block_descriptor_26;
    v19 = _Block_copy(&aBlock);

    v20 = v24;
    [v15 fetchProxyWithHandler:v24 errorHandler:v19];
    _Block_release(v19);
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_191C6A64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_191C6D5DC();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  sub_191C00E88(a1, v18);
  sub_191C6D748();
  swift_dynamicCast();
  v11 = aBlock[6];
  (*(v8 + 16))(&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_191C6D834;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C006E0;
  aBlock[3] = &block_descriptor_32;
  v14 = _Block_copy(aBlock);

  [v11 remote:a2 queryWithEncodedQueryDescriptor:v14 completion:?];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_191C6A838(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_191C6D5DC();
    return sub_191CC69D8();
  }

  else if (a1)
  {
    sub_191C6D5DC();
    v5 = a1;
    return sub_191CC69E8();
  }

  else
  {
    result = sub_191CC7118();
    __break(1u);
  }

  return result;
}

uint64_t sub_191C6A8F4(void *a1)
{
  v1 = a1;
  sub_191C6D5DC();
  return sub_191CC69D8();
}

uint64_t QueryStore.evaluate<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[26] = a7;
  v8[27] = v7;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C6A964, 0, 0);
}

uint64_t sub_191C6A964()
{
  v16 = v0;
  v1 = *(v0 + 160);
  *(v0 + 96) = *(v0 + 168);
  *(v0 + 112) = *(v0 + 184);
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  BaseQueryDescriptor.encode()(Descriptor, v3, v14);
  v4 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v4;
  *(v0 + 48) = v15;
  v5 = type metadata accessor for AnySecureCoding();
  v6 = objc_allocWithZone(v5);
  sub_191C6D0B0(v0 + 16, v0 + 56);
  v7 = sub_191C6CF84((v0 + 16));
  *(v0 + 224) = v7;
  v8 = v7;
  v9 = *(v0 + 216);
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_191C6AB24;

  return MEMORY[0x1EEE6DE38](v0 + 136, 0, 0, 0xD00000000000001ELL, 0x8000000191D2DC50, sub_191C6D160, v10, v5);
}

uint64_t sub_191C6AB24()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_191C6AD9C;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_191C6AC40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C6AC40()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);

  v5 = *(v0 + 136);
  sub_191CC6978();
  *(v0 + 144) = v2;
  swift_getWitnessTable();
  *(v0 + 152) = v3;
  swift_getWitnessTable();
  AnySecureCoding.decoded<A>(_:)();
  sub_191C6D10C(v0 + 16);

  if (v1)
  {
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 8);

    return v9(v8);
  }
}

uint64_t sub_191C6AD9C()
{
  v1 = *(v0 + 232);

  sub_191C6D10C(v0 + 16);
  v2 = *(v0 + 248);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_191C6AE10()
{
  if (*(v0 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType) == 1)
  {
    v2 = sub_191CC5C18();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_191CC5C08();
    sub_191C6D1C8();
    v5 = *(v0 + OBJC_IVAR___HKAnySecureCoding_payload);
    v6 = *(v0 + OBJC_IVAR___HKAnySecureCoding_payload + 8);
    sub_191C6D564();
    sub_191CC5BF8();

    if (!v1)
    {
      return v8;
    }
  }

  else
  {
    sub_191C6D438();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_191C6AEFC()
{
  if (*(v0 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType) == 1)
  {
    v1 = sub_191CC5C18();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_191CC5C08();
    sub_191C6D48C();
    v4 = *(v0 + OBJC_IVAR___HKAnySecureCoding_payload);
    v5 = *(v0 + OBJC_IVAR___HKAnySecureCoding_payload + 8);
    sub_191C6D4E0();
    sub_191CC5BF8();
  }

  else
  {
    sub_191C6D438();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t QueryStore.evaluate<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C6B00C, 0, 0);
}

uint64_t sub_191C6B00C()
{
  v16 = v0;
  v1 = *(v0 + 152);
  *(v0 + 96) = *(v0 + 160);
  *(v0 + 112) = *(v0 + 176);
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  BaseQueryDescriptor.encode()(Descriptor, v3, v14);
  v4 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v4;
  *(v0 + 48) = v15;
  v5 = type metadata accessor for AnySecureCoding();
  v6 = objc_allocWithZone(v5);
  sub_191C6D0B0(v0 + 16, v0 + 56);
  v7 = sub_191C6CF84((v0 + 16));
  *(v0 + 200) = v7;
  v8 = v7;
  v9 = *(v0 + 192);
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_191C6B1CC;

  return MEMORY[0x1EEE6DE38](v0 + 128, 0, 0, 0xD00000000000001ELL, 0x8000000191D2DC50, sub_191C6D98C, v10, v5);
}

uint64_t sub_191C6B1CC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_191C6B488;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_191C6B2E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C6B2E8()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 128);
  v3 = sub_191C6AE10();
  if (v1)
  {
    sub_191C6D10C(v0 + 16);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v16 = *(v0 + 168);
    v6 = v3;

    *(v0 + 136) = v6;
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v16;
    *(v7 + 40) = v4;
    sub_191C6D1C8();
    v9 = v8;
    v10 = sub_191BF92E0();
    v11 = sub_191C6D218();
    v12 = sub_191C69C84(sub_191C6D168, v7, v9, v16, v10, v11, MEMORY[0x1E69E7288], v0 + 144);

    sub_191C6D10C(v0 + 16);

    v15 = *(v0 + 8);

    return v15(v12);
  }
}

uint64_t sub_191C6B488()
{
  v1 = *(v0 + 208);

  sub_191C6D10C(v0 + 16);
  v2 = *(v0 + 224);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t QueryStore.evaluate<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[34] = v12;
  v9[35] = v8;
  v9[32] = a8;
  v9[33] = v11;
  v9[30] = a6;
  v9[31] = a7;
  v9[28] = a4;
  v9[29] = a5;
  v9[26] = a2;
  v9[27] = a3;
  v9[25] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C6B538, 0, 0);
}

{
  v9[36] = a8;
  v9[37] = v8;
  v9[34] = a6;
  v9[35] = a7;
  v9[32] = a4;
  v9[33] = a5;
  v9[30] = a2;
  v9[31] = a3;
  v9[29] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C6BA48, 0, 0);
}

{
  v9[36] = a8;
  v9[37] = v8;
  v9[34] = a6;
  v9[35] = a7;
  v9[32] = a4;
  v9[33] = a5;
  v9[30] = a2;
  v9[31] = a3;
  v9[29] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C6C0AC, 0, 0);
}

uint64_t sub_191C6B538()
{
  v15 = v0;
  v1 = *(v0 + 208);
  *(v0 + 96) = *(v0 + 216);
  *(v0 + 112) = *(v0 + 232);
  Descriptor = type metadata accessor for MergeQueryDescriptor();
  MergeQueryDescriptor.encode()(Descriptor, v13);
  v3 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v14;
  v4 = type metadata accessor for AnySecureCoding();
  v5 = objc_allocWithZone(v4);
  sub_191C6D0B0(v0 + 16, v0 + 56);
  v6 = sub_191C6CF84((v0 + 16));
  *(v0 + 288) = v6;
  v7 = v6;
  v8 = *(v0 + 280);
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_191C6B6F8;

  return MEMORY[0x1EEE6DE38](v0 + 192, 0, 0, 0xD00000000000001ELL, 0x8000000191D2DC50, sub_191C6D98C, v9, v4);
}

uint64_t sub_191C6B6F8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_191C6B9A4;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_191C6B814;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C6B814()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 312);

  v13 = *(v0 + 192);
  v9 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  v10 = *(v6 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModelPair();
  *(v0 + 128) = v4;
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;
  swift_getWitnessTable();
  *(v0 + 160) = v4;
  *(v0 + 168) = v3;
  *(v0 + 176) = v2;
  *(v0 + 184) = v1;
  swift_getWitnessTable();
  AnySecureCoding.decoded<A>(_:)();

  sub_191C6D10C(v0 + 16);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_191C6B9A4()
{
  v1 = *(v0 + 296);

  sub_191C6D10C(v0 + 16);
  v2 = *(v0 + 312);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_191C6BA48()
{
  v15 = v0;
  v1 = *(v0 + 240);
  *(v0 + 96) = *(v0 + 248);
  *(v0 + 112) = *(v0 + 264);
  Descriptor = type metadata accessor for MergeQueryDescriptor();
  MergeQueryDescriptor.encode()(Descriptor, v13);
  v3 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v14;
  v4 = type metadata accessor for AnySecureCoding();
  v5 = objc_allocWithZone(v4);
  sub_191C6D0B0(v0 + 16, v0 + 56);
  v6 = sub_191C6CF84((v0 + 16));
  *(v0 + 304) = v6;
  v7 = v6;
  v8 = *(v0 + 296);
  v9 = swift_task_alloc();
  *(v0 + 312) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  *(v0 + 320) = v11;
  *v11 = v0;
  v11[1] = sub_191C6BC08;

  return MEMORY[0x1EEE6DE38](v0 + 208, 0, 0, 0xD00000000000001ELL, 0x8000000191D2DC50, sub_191C6D98C, v9, v4);
}

uint64_t sub_191C6BC08()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_191C6D980;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_191C6BD24;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C6BD24()
{
  v23 = *(v0 + 328);
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);

  v5 = *(v0 + 208);
  v6 = *(v3 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModelPair();
  v7 = sub_191C6D270();
  v8 = sub_191C6D2C4();
  *(v0 + 128) = v7;
  *(v0 + 136) = v8;
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;
  swift_getWitnessTable();
  *(v0 + 160) = v7;
  *(v0 + 168) = v8;
  *(v0 + 176) = v2;
  *(v0 + 184) = v1;
  swift_getWitnessTable();
  AnySecureCoding.decoded<A>(_:)();
  if (v23)
  {
    sub_191C6D10C(v0 + 16);
  }

  else
  {
    v22 = *(v0 + 264);
    v24 = *(v0 + 248);
    v20 = *(v0 + 280);

    v21 = *(v0 + 200);
    *(v0 + 216) = *(v0 + 192);
    v9 = swift_task_alloc();
    v9[1] = v24;
    v9[2] = v22;
    v9[3] = v20;
    sub_191C6D1C8();
    *&v20 = v10;
    v11 = *(v22 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = sub_191BF92E0();
    v14 = sub_191C6D218();

    v15 = sub_191C69C84(sub_191C6D318, v9, v20, AssociatedTypeWitness, v13, v14, MEMORY[0x1E69E7288], v0 + 224);
    v18 = *(v0 + 232);
    v19 = v15;
    sub_191C6D10C(v0 + 16);

    ModelPair.init(first:second:)(v19, v21, v18);
  }

  v16 = *(v0 + 8);

  return v16();
}

id sub_191C6BFF8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, void *a3@<X7>, void *a4@<X8>)
{
  v10 = *a1;
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AnyCodable.decoded<A>(_:)(AssociatedTypeWitness, AssociatedTypeWitness);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_191C6C0AC()
{
  v15 = v0;
  v1 = *(v0 + 240);
  *(v0 + 96) = *(v0 + 248);
  *(v0 + 112) = *(v0 + 264);
  Descriptor = type metadata accessor for MergeQueryDescriptor();
  MergeQueryDescriptor.encode()(Descriptor, v13);
  v3 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v14;
  v4 = type metadata accessor for AnySecureCoding();
  v5 = objc_allocWithZone(v4);
  sub_191C6D0B0(v0 + 16, v0 + 56);
  v6 = sub_191C6CF84((v0 + 16));
  *(v0 + 304) = v6;
  v7 = v6;
  v8 = *(v0 + 296);
  v9 = swift_task_alloc();
  *(v0 + 312) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  *(v0 + 320) = v11;
  *v11 = v0;
  v11[1] = sub_191C6C26C;

  return MEMORY[0x1EEE6DE38](v0 + 208, 0, 0, 0xD00000000000001ELL, 0x8000000191D2DC50, sub_191C6D98C, v9, v4);
}

uint64_t sub_191C6C26C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_191C6C66C;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_191C6C388;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C6C388()
{
  v24 = *(v0 + 328);
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);

  v5 = *(v0 + 208);
  v6 = *(v3 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModelPair();
  v7 = sub_191C6D270();
  v8 = sub_191C6D2C4();
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;
  *(v0 + 144) = v7;
  *(v0 + 152) = v8;
  swift_getWitnessTable();
  *(v0 + 160) = v2;
  *(v0 + 168) = v1;
  *(v0 + 176) = v7;
  *(v0 + 184) = v8;
  swift_getWitnessTable();
  AnySecureCoding.decoded<A>(_:)();
  if (v24)
  {
    sub_191C6D10C(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 248);
    v23 = *(v0 + 272);
    v25 = *(v0 + 256);

    v11 = *(v0 + 192);
    *(v0 + 216) = *(v0 + 200);
    v12 = swift_task_alloc();
    *(v12 + 16) = v10;
    *(v12 + 24) = v25;
    *(v12 + 40) = v23;
    *(v12 + 56) = v9;
    sub_191C6D1C8();
    v22 = v13;
    v14 = *(v23 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16 = sub_191BF92E0();
    v17 = sub_191C6D218();

    v20 = sub_191C69C84(sub_191C6D344, v12, v22, AssociatedTypeWitness, v16, v17, MEMORY[0x1E69E7288], v0 + 224);
    v21 = *(v0 + 232);
    sub_191C6D10C(v0 + 16);

    ModelPair.init(first:second:)(v11, v20, v21);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_191C6C66C()
{
  v1 = *(v0 + 312);

  sub_191C6D10C(v0 + 16);
  v2 = *(v0 + 328);
  v3 = *(v0 + 8);

  return v3();
}

id sub_191C6C6E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X4>, void *a3@<X7>, void *a4@<X8>)
{
  v10 = *a1;
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AnyCodable.decoded<A>(_:)(AssociatedTypeWitness, AssociatedTypeWitness);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t QueryStore.evaluate<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C6C78C, 0, 0);
}

uint64_t sub_191C6C78C()
{
  v15 = v0;
  v1 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 200);
  *(v0 + 112) = *(v0 + 216);
  Descriptor = type metadata accessor for MergeQueryDescriptor();
  MergeQueryDescriptor.encode()(Descriptor, v13);
  v3 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v14;
  v4 = type metadata accessor for AnySecureCoding();
  v5 = objc_allocWithZone(v4);
  sub_191C6D0B0(v0 + 16, v0 + 56);
  v6 = sub_191C6CF84((v0 + 16));
  *(v0 + 240) = v6;
  v7 = v6;
  v8 = *(v0 + 232);
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_191C6C94C;

  return MEMORY[0x1EEE6DE38](v0 + 144, 0, 0, 0xD00000000000001ELL, 0x8000000191D2DC50, sub_191C6D98C, v9, v4);
}

uint64_t sub_191C6C94C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_191C6CD30;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_191C6CA68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C6CA68()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 144);
  sub_191C6AEFC();
  if (v1)
  {
    sub_191C6D10C(v0 + 16);
  }

  else
  {
    v20 = *(v0 + 216);
    v22 = *(v0 + 200);

    v3 = *(v0 + 136);
    *(v0 + 152) = *(v0 + 128);
    v4 = swift_task_alloc();
    *(v4 + 16) = v22;
    *(v4 + 32) = v20;
    sub_191C6D1C8();
    v6 = v5;
    v7 = *(v20 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = sub_191BF92E0();
    v10 = sub_191C6D218();

    *&v22 = sub_191C69C84(sub_191C6D3A0, v4, v6, AssociatedTypeWitness, v9, v10, MEMORY[0x1E69E7288], v0 + 160);
    v11 = *(v0 + 224);
    v12 = *(v0 + 200);
    v21 = *(v0 + 208);

    *(v0 + 168) = v3;
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v21;
    *(v13 + 40) = v11;
    v14 = *(v11 + 8);
    v15 = swift_getAssociatedTypeWitness();

    v18 = sub_191C69C84(sub_191C6D3C4, v13, v6, v15, v9, v10, MEMORY[0x1E69E7288], v0 + 176);
    v19 = *(v0 + 184);
    sub_191C6D10C(v0 + 16);

    swift_bridgeObjectRelease_n();

    ModelPair.init(first:second:)(v22, v18, v19);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_191C6CD30()
{
  v1 = *(v0 + 248);

  sub_191C6D10C(v0 + 16);
  v2 = *(v0 + 264);
  v3 = *(v0 + 8);

  return v3();
}

id sub_191C6CDA4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, void *a3@<X5>, void *a4@<X8>)
{
  v10 = *a1;
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AnyCodable.decoded<A>(_:)(AssociatedTypeWitness, AssociatedTypeWitness);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

id sub_191C6CE28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  v10 = *a1;
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AnyCodable.decoded<A>(_:)(AssociatedTypeWitness, AssociatedTypeWitness);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

id QueryStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueryStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_191C6CF84(__int128 *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v19 = *(a1 + 4);
  v3[OBJC_IVAR___HKAnySecureCoding_encodedObjectType] = 1;
  v7 = sub_191CC5C48();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_191CC5C38();
  sub_191C6D8B4();
  v10 = sub_191CC5C28();
  if (v2)
  {

    sub_191C6D908(v17, *(&v17 + 1), v18, *(&v18 + 1), v19);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v10;
    v14 = v11;
    sub_191C6D908(v17, *(&v17 + 1), v18, *(&v18 + 1), v19);

    v15 = &v3[OBJC_IVAR___HKAnySecureCoding_payload];
    *v15 = v13;
    v15[1] = v14;
    v16.receiver = v3;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_init);
  }
}

id sub_191C6D168@<X0>(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  result = AnyCodable.decoded<A>(_:)(*(v3 + 24), *(v3 + 24));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void sub_191C6D1C8()
{
  if (!qword_1EADCC448)
  {
    v0 = sub_191CC6978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC448);
    }
  }
}

unint64_t sub_191C6D218()
{
  result = qword_1EADCC458;
  if (!qword_1EADCC458)
  {
    sub_191C6D1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC458);
  }

  return result;
}

unint64_t sub_191C6D270()
{
  result = qword_1EADCC460;
  if (!qword_1EADCC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC460);
  }

  return result;
}

unint64_t sub_191C6D2C4()
{
  result = qword_1EADCC468;
  if (!qword_1EADCC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC468);
  }

  return result;
}

id sub_191C6D3A0@<X0>(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  return sub_191C6CDA4(a1, v3[4], a2, a3);
}

id sub_191C6D3C4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  return sub_191C6CE28(a1, v3[5], a2, a3);
}

unint64_t sub_191C6D438()
{
  result = qword_1EADCC478;
  if (!qword_1EADCC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC478);
  }

  return result;
}

void sub_191C6D48C()
{
  if (!qword_1EADCC480)
  {
    v0 = type metadata accessor for ModelPair();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC480);
    }
  }
}

unint64_t sub_191C6D4E0()
{
  result = qword_1EADCC488;
  if (!qword_1EADCC488)
  {
    sub_191C6D48C();
    sub_191C6D270();
    sub_191C6D2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC488);
  }

  return result;
}

unint64_t sub_191C6D564()
{
  result = qword_1EADCC490;
  if (!qword_1EADCC490)
  {
    sub_191C6D1C8();
    sub_191C6D270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC490);
  }

  return result;
}

void sub_191C6D5DC()
{
  if (!qword_1EADCC498)
  {
    type metadata accessor for AnySecureCoding();
    sub_191BF92E0();
    v0 = sub_191CC69F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC498);
    }
  }
}

uint64_t sub_191C6D64C(uint64_t a1)
{
  sub_191C6D5DC();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_191C6A64C(a1, v4, v5);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C6D6D8(void *a1)
{
  sub_191C6D5DC();
  v3 = *(*(v2 - 8) + 80);

  return sub_191C6A8F4(a1);
}

unint64_t sub_191C6D748()
{
  result = qword_1EADCC4A0;
  if (!qword_1EADCC4A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCC4A0);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  sub_191C6D5DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_191C6D834(void *a1, void *a2)
{
  sub_191C6D5DC();
  v5 = *(*(v4 - 8) + 80);

  return sub_191C6A838(a1, a2);
}

unint64_t sub_191C6D8B4()
{
  result = qword_1EADCC4A8;
  if (!qword_1EADCC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC4A8);
  }

  return result;
}

void sub_191C6D908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = (a5 >> 60) & 3;
  if (((a5 >> 60) & 3) > 1)
  {
    if (v6 != 2)
    {
      return;
    }
  }

  else if (!v6)
  {

    sub_191C049D8(a4, a5);
    return;
  }
}

id HKSleepDaySummaryCollectionQuery.init(morningIndexRange:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_191C6DA8C;
  v12[3] = &block_descriptor_17;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithMorningIndexRange:a1 resultsHandler:{a2, v9}];
  _Block_release(v9);

  return v10;
}

{
  v4 = sub_191C6E40C(a1, a2, a3, a4);

  return v4;
}

void sub_191C6DA8C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  type metadata accessor for HKSleepDaySummaryCollection(0);
  v8 = sub_191CC68E8();

  v10 = a2;
  v9 = a4;
  v7(v10, v8, a4);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C6DB8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_191CC6EE8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >= 1)
  {
    v4 = 0;
    do
    {
      if (__OFADD__(v4, 7))
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v4 + 7;
      }

      v9 = v4;
      sub_191C6DCA4(&v9, a1, 7, &v8);
      if (v8)
      {
        MEMORY[0x193B02060]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_191CC6908();
        }

        sub_191CC6948();
        v3 = v10;
      }

      v4 = v5;
    }

    while (v5 < v2);
  }

  return v3;
}

void sub_191C6DCA4(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *a1 + a3;
  if (__OFADD__(*a1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v4 = a4;
    a4 = a2 & 0xFFFFFFFFFFFFFF8;
    v7 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 < v9)
      {
        v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 < v8)
      {
        goto LABEL_45;
      }

      if (v10 >= v8)
      {
        goto LABEL_7;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  if (v5 < 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = a4;
  }

  v24 = sub_191CC6EE8();
  if (v24 < v9)
  {
    v9 = v24;
  }

  if (v9 < v8)
  {
    goto LABEL_45;
  }

  if (sub_191CC6EE8() < v8)
  {
    goto LABEL_44;
  }

LABEL_7:
  if (v8 < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v7)
  {
    v11 = sub_191CC6EE8();
  }

  else
  {
    v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < v9)
  {
    goto LABEL_47;
  }

  if (v9 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v5 & 0xC000000000000001) != 0 && v8 != v9)
  {
    if (v8 < v9)
    {
      sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);

      v12 = v8;
      do
      {
        v13 = v12 + 1;
        sub_191CC6FD8();
        v12 = v13;
      }

      while (v9 != v13);
      if (!v7)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v7)
  {
LABEL_19:
    v5 &= 0xFFFFFFFFFFFFFF8uLL;
    v6 = v5 + 32;
    v9 = (2 * v9) | 1;
    goto LABEL_22;
  }

LABEL_21:

  v5 = sub_191CC7168();
  v6 = v14;
  v8 = v15;
  v9 = v16;
LABEL_22:
  v17 = v9 >> 1;
  if (v8 != v9 >> 1)
  {
    if (v8 < (v9 >> 1))
    {
      if ((v9 & 1) == 0)
      {
        swift_unknownObjectRetain();
LABEL_27:
        sub_191C939E4(v5, v6, v8, v9);
        goto LABEL_33;
      }

      sub_191CC7418();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x1E69E7CC0];
      }

      v20 = *(v19 + 16);

      if (!__OFSUB__(v17, v8))
      {
        if (v20 == v17 - v8)
        {
          v21 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v21)
          {
LABEL_34:
            v22 = objc_allocWithZone(HKSleepDaySummaryCollection);
            sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
            v23 = sub_191CC68D8();

            v18 = [v22 initWithSleepDaySummaries_];
            swift_unknownObjectRelease();

            goto LABEL_35;
          }

LABEL_33:
          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  swift_unknownObjectRelease();
  v18 = 0;
LABEL_35:
  *v4 = v18;
}

uint64_t sub_191C6DF80(void *a1, uint64_t a2, void *a3, void (*a4)(void, void, void), uint64_t a5, uint64_t (*a6)(void))
{
  if (a3)
  {
    if (qword_1EADCA178 != -1)
    {
      swift_once();
    }

    v11 = sub_191CC6348();
    __swift_project_value_buffer(v11, qword_1EADE70C8);
    v12 = a3;
    v13 = a1;
    v14 = sub_191CC6328();
    v15 = sub_191CC6C98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v34 = a4;
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v16 = 136315650;
      v18 = sub_191CC76A8();
      v33 = a6;
      v20 = sub_191C3B288(v18, v19, &v35);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      v21 = a3;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      *(v16 + 22) = 2080;
      v23 = [v13 description];
      v24 = sub_191CC67B8();
      v26 = v25;

      v27 = sub_191C3B288(v24, v26, &v35);

      *(v16 + 24) = v27;
      a6 = v33;
      _os_log_impl(&dword_19197B000, v14, v15, "[%s]: Error returned by query: %@\nQuery: %s", v16, 0x20u);
      sub_191C6E5A8(v17);
      v28 = v17;
      a4 = v34;
      MEMORY[0x193B047C0](v28, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193B047C0](v32, -1, -1);
      MEMORY[0x193B047C0](v16, -1, -1);
    }
  }

  if (a2)
  {
    v29 = a2;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = a6(v29);
  a4(a1, v30, a3);
}

void sub_191C6E2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKSleepDaySummaryCollection(0);
  v7 = sub_191CC68D8();
  if (a3)
  {
    v8 = sub_191CC5FB8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

HKSleepDaySummaryCollectionQuery __swiftcall HKSleepDaySummaryCollectionQuery.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.query = v2;
  result.super.isa = v1;
  return result;
}

id sub_191C6E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = sub_191C6DB8C;
  v10[5] = 0;
  v10[6] = ObjectType;
  v11 = objc_allocWithZone(HKSleepDaySummaryQuery);
  aBlock[4] = sub_191C6E598;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191CA205C;
  aBlock[3] = &block_descriptor_7_1;
  v12 = _Block_copy(aBlock);

  v13 = [v11 initWithMorningIndexRange:a1 ascending:a2 limit:1 options:0 resultsHandler:{68, v12}];
  _Block_release(v12);

  *&v4[OBJC_IVAR___HKSleepDaySummaryCollectionQuery_query] = v13;
  v15.receiver = v4;
  v15.super_class = HKSleepDaySummaryCollectionQuery;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_191C6E598(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  return sub_191C6DF80(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

uint64_t sub_191C6E5A8(uint64_t a1)
{
  sub_191C6E604();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_191C6E604()
{
  if (!qword_1EADCADB0)
  {
    sub_191BFAE6C(255, &qword_1EADCC5C0, 0x1E69E58C0);
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCADB0);
    }
  }
}

uint64_t _HKBehavior.description.getter()
{
  sub_191CC6FC8();
  v0 = sub_191C6E84C();

  MEMORY[0x193B01F90](10, 0xE100000000000000);
  v1 = sub_191C6EC9C();
  MEMORY[0x193B01F90](v1);

  MEMORY[0x193B01F90](10, 0xE100000000000000);
  v2 = sub_191C6F3FC();
  MEMORY[0x193B01F90](v2);

  MEMORY[0x193B01F90](10, 0xE100000000000000);
  v3 = sub_191C6F5B4();
  MEMORY[0x193B01F90](v3);

  MEMORY[0x193B01F90](10, 0xE100000000000000);
  v4 = sub_191C6F860();
  MEMORY[0x193B01F90](v4);

  MEMORY[0x193B01F90](10, 0xE100000000000000);
  v5 = sub_191C6FE78();
  MEMORY[0x193B01F90](v5);

  MEMORY[0x193B01F90](10, 0xE100000000000000);
  v6 = sub_191C70080();
  MEMORY[0x193B01F90](v6);

  return v0;
}

uint64_t sub_191C6E84C()
{
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000023, 0x8000000191D2E560);
  v1 = [v0 isDeviceSupported];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v3, v4);

  MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2E590);
  v5 = [v0 deviceType];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = 0x8000000191D2E6A0;
      v7 = 0xD000000000000010;
      goto LABEL_21;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        v6 = 0xE800000000000000;
        v7 = 0x565420656C707041;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v6 = 0xE300000000000000;
    v7 = 6512973;
  }

  else
  {
    if (!v5)
    {
      v6 = 0xE600000000000000;
      v7 = 0x656E6F685069;
      goto LABEL_21;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 0xEB00000000686374;
        v7 = 0x615720656C707041;
        goto LABEL_21;
      }

LABEL_18:
      v6 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E55;
      goto LABEL_21;
    }

    v6 = 0xE400000000000000;
    v7 = 1684099177;
  }

LABEL_21:
  MEMORY[0x193B01F90](v7, v6);

  MEMORY[0x193B01F90](0xD000000000000018, 0x8000000191D2E5B0);
  v8 = [v0 isCompanionCapable];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v10, v11);

  MEMORY[0x193B01F90](0xD000000000000010, 0x8000000191D2E5D0);
  v12 = [v0 hasTelephonyCapability];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v14, v15);

  MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2E5F0);
  v16 = [v0 isTestingDevice];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v18, v19);

  MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2E610);
  v20 = [v0 isRunningStoreDemoMode];
  v21 = v20 == 0;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v22, v23);

  MEMORY[0x193B01F90](0x202020202020200ALL, 0xEF203A3130324620);
  v24 = [v0 runningInStoreDemoModeF201];
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v26, v27);

  MEMORY[0x193B01F90](0xD000000000000011, 0x8000000191D2E630);
  v28 = [v0 isProdFused];
  v29 = v28 == 0;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v30, v31);

  MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2E650);
  v32 = [v0 isVirtualDevice];
  v33 = v32 == 0;
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v34, v35);

  MEMORY[0x193B01F90](0xD000000000000020, 0x8000000191D2E670);
  v36 = [v0 supportsCoreOSDatabaseAssertion];
  v37 = v36 == 0;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v38, v39);

  return 0;
}

uint64_t sub_191C6EC9C()
{
  v1 = v0;
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD00000000000001ALL, 0x8000000191D2E400);
  v2 = [v0 currentDeviceName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_191CC67B8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_191C702D8();
  v7 = sub_191CC67C8();
  MEMORY[0x193B01F90](v7);

  MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2E420);
  v8 = [v1 currentDeviceClass];
  if (v8)
  {
    v9 = v8;
    v10 = sub_191CC67B8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_191CC67C8();
  MEMORY[0x193B01F90](v13);

  MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2E440);
  v14 = [v1 currentDeviceManufacturer];
  if (v14)
  {
    v15 = v14;
    v16 = sub_191CC67B8();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = sub_191CC67C8();
  MEMORY[0x193B01F90](v19);

  MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2E460);
  v20 = [v1 currentDeviceRegionCode];
  if (v20)
  {
    v21 = v20;
    v22 = sub_191CC67B8();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = sub_191CC67C8();
  MEMORY[0x193B01F90](v25);

  MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2E480);
  v26 = [v1 currentDeviceRegionInfo];
  if (v26)
  {
    v27 = v26;
    v28 = sub_191CC67B8();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = sub_191CC67C8();
  MEMORY[0x193B01F90](v31);

  MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2E4A0);
  v32 = [v1 currentDeviceDisplayName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_191CC67B8();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = sub_191CC67C8();
  MEMORY[0x193B01F90](v37);

  MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2E4C0);
  v38 = [v1 currentDeviceProductType];
  if (v38)
  {
    v39 = v38;
    v40 = sub_191CC67B8();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = sub_191CC67C8();
  MEMORY[0x193B01F90](v43);

  MEMORY[0x193B01F90](0x205748202020200ALL, 0xEF203A6C65646F4DLL);
  v44 = [v1 currentDeviceHWModelString];
  if (v44)
  {
    v45 = v44;
    v46 = sub_191CC67B8();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = sub_191CC67C8();
  MEMORY[0x193B01F90](v49);

  MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2E4E0);
  v50 = [v1 currentDeviceReleaseType];
  if (v50)
  {
    v51 = v50;
    v52 = sub_191CC67B8();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = sub_191CC67C8();
  MEMORY[0x193B01F90](v55);

  MEMORY[0x193B01F90](0xD00000000000001CLL, 0x8000000191D2E500);
  v56 = [v1 currentInternalDeviceModel];
  if (v56)
  {
    v57 = v56;
    v58 = sub_191CC67B8();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = sub_191CC67C8();
  MEMORY[0x193B01F90](v61);

  MEMORY[0x193B01F90](0x20534F202020200ALL, 0xEE00203A656D614ELL);
  v62 = [v1 currentOSName];
  if (v62)
  {
    v63 = v62;
    v64 = sub_191CC67B8();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = sub_191CC67C8();
  MEMORY[0x193B01F90](v67);

  MEMORY[0x193B01F90](0x20534F202020200ALL, 0xEF203A646C697542);
  v68 = [v1 currentOSBuild];
  if (v68)
  {
    v69 = v68;
    v70 = sub_191CC67B8();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  v73 = sub_191CC67C8();
  MEMORY[0x193B01F90](v73);

  MEMORY[0x193B01F90](0xD000000000000011, 0x8000000191D2E520);
  v74 = [v1 currentOSVersion];
  if (v74)
  {
    v75 = v74;
    v76 = sub_191CC67B8();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  v79 = sub_191CC67C8();
  MEMORY[0x193B01F90](v79);

  MEMORY[0x193B01F90](0xD000000000000011, 0x8000000191D2E540);
  v80 = [v1 isRunningSeedBuild];
  v81 = v80 == 0;
  if (v80)
  {
    v82 = 1702195828;
  }

  else
  {
    v82 = 0x65736C6166;
  }

  if (v81)
  {
    v83 = 0xE500000000000000;
  }

  else
  {
    v83 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v82, v83);

  return 0;
}

uint64_t sub_191C6F3FC()
{
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000024, 0x8000000191D2E370);
  v1 = [v0 collectsData];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v3, v4);

  MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2E3A0);
  v5 = [v0 collectsCalorimetry];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v7, v8);

  MEMORY[0x193B01F90](0xD000000000000011, 0x8000000191D2E3C0);
  v9 = [v0 supportsHeartRateDataCollection];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v11, v12);

  MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2E3E0);
  v13 = [v0 routeSmoothingEnabled];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v15, v16);

  return 0;
}

uint64_t sub_191C6F5B4()
{
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000026, 0x8000000191D2E2A0);
  v1 = [v0 supportsCloudSync];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v3, v4);

  MEMORY[0x193B01F90](0x616853202020200ALL, 0xEF203A676E696472);
  v5 = [v0 supportsCloudSyncSharding];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v7, v8);

  MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2E2D0);
  v9 = [v0 supportsCloudSyncStagingShard];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v11, v12);

  MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2E2F0);
  v13 = [v0 supportsCoordinatedCloudSync];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v15, v16);

  MEMORY[0x193B01F90](0xD000000000000019, 0x8000000191D2E310);
  v17 = [v0 canPerformOwnershipTakeover];
  v18 = v17 == 0;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v19, v20);

  MEMORY[0x193B01F90](0xD00000000000001BLL, 0x8000000191D2E330);
  v21 = [v0 supportsPeriodicFullCloudSync];
  v22 = v21 == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v23, v24);

  MEMORY[0x193B01F90](0xD00000000000001BLL, 0x8000000191D2E350);
  v25 = [v0 supportsPeriodicLiteCloudSync];
  v26 = v25 == 0;
  if (v25)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v27, v28);

  return 0;
}

uint64_t sub_191C6F860()
{
  v1 = v0;
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000037, 0x8000000191D2E040);
  v2 = [v0 supportsAWDMetricSubmission];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v4, v5);

  MEMORY[0x193B01F90](0xD000000000000017, 0x8000000191D2E080);
  v6 = [v0 supportsActivitySharing];
  v7 = v6 == 0;
  if (v6)
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

  MEMORY[0x193B01F90](v8, v9);

  MEMORY[0x193B01F90](0xD000000000000021, 0x8000000191D2E0A0);
  v10 = [v0 enableBloodPressureValidations];
  v11 = v10 == 0;
  if (v10)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v12, v13);

  MEMORY[0x193B01F90](0x444545202020200ALL, 0xEA0000000000203ALL);
  v14 = [v0 supportsEED];
  v15 = v14 == 0;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v16, v17);

  MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2E0D0);
  v18 = HKStringFromFitnessMode([v0 fitnessMode]);
  v19 = sub_191CC67B8();
  v21 = v20;

  MEMORY[0x193B01F90](v19, v21);

  MEMORY[0x193B01F90](0xD000000000000024, 0x8000000191D2E0F0);
  v22 = [v1 healthAppSupportedOnDevice];
  v23 = v22 == 0;
  if (v22)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v24, v25);

  MEMORY[0x193B01F90](0xD000000000000011, 0x8000000191D2E120);
  v26 = [v1 healthAppHidden];
  v27 = v26 == 0;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v28, v29);

  MEMORY[0x193B01F90](0xD000000000000018, 0x8000000191D2E140);
  v30 = [v1 healthAppNotInstalled];
  v31 = v30 == 0;
  if (v30)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v31)
  {
    v33 = 0xE500000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v32, v33);

  MEMORY[0x193B01F90](0xD000000000000022, 0x8000000191D2E160);
  v34 = [v1 healthAppHiddenOrNotInstalled];
  v35 = v34 == 0;
  if (v34)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v36, v37);

  MEMORY[0x193B01F90](0xD000000000000010, 0x8000000191D2E190);
  v38 = [v1 supportsNanoSync];
  v39 = v38 == 0;
  if (v38)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v39)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v40, v41);

  MEMORY[0x193B01F90](0xD000000000000022, 0x8000000191D2E1B0);
  v42 = [v1 supportsPeriodicCountryMonitoring];
  v43 = v42 == 0;
  if (v42)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v44, v45);

  MEMORY[0x193B01F90](0xD000000000000018, 0x8000000191D2E1E0);
  v46 = [v1 supportsSampleExpiration];
  v47 = v46 == 0;
  if (v46)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v48, v49);

  MEMORY[0x193B01F90](0xD000000000000019, 0x8000000191D2E200);
  v50 = [v1 supportsSecondaryProfiles];
  v51 = v50 == 0;
  if (v50)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (v51)
  {
    v53 = 0xE500000000000000;
  }

  else
  {
    v53 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v52, v53);

  MEMORY[0x193B01F90](0xD00000000000001ELL, 0x8000000191D2E220);
  v54 = [v1 isStandalonePhoneFitnessMode];
  v55 = v54 == 0;
  if (v54)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v55)
  {
    v57 = 0xE500000000000000;
  }

  else
  {
    v57 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v56, v57);

  MEMORY[0x193B01F90](0xD000000000000018, 0x8000000191D2E240);
  v58 = [v1 supportsSwimmingWorkoutSessions];
  v59 = v58 == 0;
  if (v58)
  {
    v60 = 1702195828;
  }

  else
  {
    v60 = 0x65736C6166;
  }

  if (v59)
  {
    v61 = 0xE500000000000000;
  }

  else
  {
    v61 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v60, v61);

  MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2E260);
  v62 = [v1 tinkerModeEnabled];
  v63 = v62 == 0;
  if (v62)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v63)
  {
    v65 = 0xE500000000000000;
  }

  else
  {
    v65 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v64, v65);

  MEMORY[0x193B01F90](0xD00000000000001BLL, 0x8000000191D2E280);
  v66 = [v1 performsWorkoutCondensation];
  v67 = v66 == 0;
  if (v66)
  {
    v68 = 1702195828;
  }

  else
  {
    v68 = 0x65736C6166;
  }

  if (v67)
  {
    v69 = 0xE500000000000000;
  }

  else
  {
    v69 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v68, v69);

  MEMORY[0x193B01F90](0x726F57202020200ALL, 0xEF203A7374756F6BLL);
  v70 = [v1 supportsWorkouts];
  v71 = v70 == 0;
  if (v70)
  {
    v72 = 1702195828;
  }

  else
  {
    v72 = 0x65736C6166;
  }

  if (v71)
  {
    v73 = 0xE500000000000000;
  }

  else
  {
    v73 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v72, v73);

  return 0;
}

uint64_t sub_191C6FE78()
{
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000021, 0x8000000191D2DF70);
  v1 = [v0 supportsOntology];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v3, v4);

  MEMORY[0x193B01F90](0xD00000000000001ALL, 0x8000000191D2DFA0);
  v5 = [v0 supportsOntologyDatabaseUpdates];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v7, v8);

  MEMORY[0x193B01F90](0xD000000000000022, 0x8000000191D2DFC0);
  v9 = [v0 supportsOntologyFeatureEvaluation];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v11, v12);

  MEMORY[0x193B01F90](0xD000000000000021, 0x8000000191D2DFF0);
  v13 = [v0 performsAutomaticConceptIndexing];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v15, v16);

  MEMORY[0x193B01F90](0xD00000000000001FLL, 0x8000000191D2E020);
  v17 = [v0 performsAutomaticUserDomainConceptProcessing];
  v18 = v17 == 0;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v19, v20);

  return 0;
}

uint64_t sub_191C70080()
{
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD00000000000001ELL, 0x8000000191D2DE90);
  v1 = [v0 futureMigrationsEnabled];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v3, v4);

  MEMORY[0x193B01F90](0xD000000000000021, 0x8000000191D2DEB0);
  v5 = [v0 supportsOntologyDatabaseFutureMigrations];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v7, v8);

  MEMORY[0x193B01F90](0xD00000000000001ALL, 0x8000000191D2DEE0);
  v9 = [v0 shouldReceiveECGSamples];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v11, v12);

  MEMORY[0x193B01F90](0xD000000000000023, 0x8000000191D2DF00);
  v13 = [v0 shouldRegisterPeriodicActivities];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v15, v16);

  MEMORY[0x193B01F90](0xD00000000000001FLL, 0x8000000191D2DF30);
  v17 = [v0 showSensitiveLogItems];
  v18 = v17 == 0;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v19, v20);

  MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2DF50);
  v21 = [v0 shouldOverrideSiriUOD];
  v22 = v21 == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v23, v24);

  return 0;
}

void sub_191C702D8()
{
  if (!qword_1EADCBD60)
  {
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCBD60);
    }
  }
}

void *HKSamplePredicate.nsPredicate.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t _s9HealthKit17HKSamplePredicateV11_sampleType9predicateACyxGSo0cF0C_So11NSPredicateCSgtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id static HKSamplePredicate.correlation(type:predicate:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = a2;

  return a1;
}

id sub_191C703B4@<X0>(void *a1@<X0>, SEL *a2@<X2>, void *a3@<X8>)
{
  sub_191BFAE6C(0, &qword_1EADCAAD0, off_1E7375460);
  *a3 = [swift_getObjCClassFromMetadata() *a2];
  a3[1] = a1;

  return a1;
}

id sub_191C70450@<X0>(void *a1@<X0>, SEL *a2@<X2>, void *a3@<X8>)
{
  *a3 = [objc_opt_self() *a2];
  a3[1] = a1;

  return a1;
}

uint64_t static HKSamplePredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_191BFAE6C(0, &qword_1EADCC5C0, 0x1E69E58C0);
  if (sub_191CC6DA8())
  {
    if (v3)
    {
      if (v5)
      {
        sub_191BFAE6C(0, qword_1EADCC4C8, 0x1E696AE18);
        v6 = v5;
        v7 = v3;
        v8 = sub_191CC6DA8();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void HKSamplePredicate.hash(into:)()
{
  v1 = v0[1];
  v2 = *v0;
  sub_191CC6DB8();
  if (v1)
  {
    sub_191CC74E8();
    v3 = v1;
    sub_191CC6DB8();
  }

  else
  {
    sub_191CC74E8();
  }
}

uint64_t HKSamplePredicate.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_191CC74C8();
  HKSamplePredicate.hash(into:)();
  return sub_191CC7508();
}

uint64_t sub_191C70660()
{
  sub_191CC74C8();
  HKSamplePredicate.hash(into:)();
  return sub_191CC7508();
}

id static HKSamplePredicate.pauseRingsSchedule(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_191BFAE6C(0, &qword_1EADCAAD0, off_1E7375460);
  result = [swift_getObjCClassFromMetadata() pauseRingsScheduleType];
  if (result)
  {
    *a2 = result;
    a2[1] = a1;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_191C70744()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C707AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_191C7081C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_191C70884()
{
  v1 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider;
  v2 = *&v0[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_191C708F4(v0, ObjectType);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_191C708F4(char *a1, uint64_t a2)
{
  v4 = sub_191CC61A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore__healthStore];
  if (v10)
  {
    v11 = v10;
    v18[1] = a2;
    swift_getMetatypeMetadata();
    sub_191CC67C8();
    sub_191CC6198();
    v12 = objc_allocWithZone(HKTaskServerProxyProvider);
    v13 = a1;
    v14 = sub_191CC6778();

    v15 = sub_191CC6168();
    v16 = [v12 initWithHealthStore:v11 taskIdentifier:v14 exportedObject:v13 taskUUID:v15];

    (*(v5 + 8))(v9, v4);
    return v16;
  }

  else
  {
    result = sub_191CC7118();
    __break(1u);
  }

  return result;
}

char *DatabaseAccessibilityAssertionStore.init(healthStore:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider] = 0;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore__healthStore] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  [*&v5[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider] setShouldRetryOnInterruption_];
  return v5;
}

void DatabaseAccessibilityAssertionStore.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:contextType:isRecovery:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_191C70884();
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v6;
  v29 = sub_191C71000;
  v30 = v14;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_191C7100C;
  v28 = &block_descriptor_18;
  v15 = _Block_copy(&v25);

  v16 = v6;

  v17 = [v13 clientQueueObjectHandlerWithCompletion_];
  _Block_release(v15);

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = *&v16[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider];
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = sub_191C7123C;
  *(v20 + 56) = v18;
  v29 = sub_191C713F0;
  v30 = v20;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_191C707AC;
  v28 = &block_descriptor_9;
  v21 = _Block_copy(&v25);
  v22 = v19;

  v23 = swift_allocObject();
  *(v23 + 16) = sub_191C7123C;
  *(v23 + 24) = v18;
  v29 = sub_191C715DC;
  v30 = v23;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_191C7081C;
  v28 = &block_descriptor_15_0;
  v24 = _Block_copy(&v25);

  [v22 fetchProxyWithHandler:v21 errorHandler:v24];
  _Block_release(v24);
  _Block_release(v21);
}

void sub_191C70EC8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  sub_191C0DAF0(a1, v13);
  if (!v14)
  {
    sub_191C71CC8(v13, sub_191C0B13C);
    goto LABEL_6;
  }

  sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    a3(0, a2);
    return;
  }

  v8 = *(a5 + OBJC_IVAR___HKDatabaseAccessibilityAssertionStore__healthStore);
  if (v8)
  {
    v9 = v8;
    [v12 configureAssertion_];
    v10 = v12;
    a3(v12, a2);
  }

  else
  {
    v11 = v12;
    a3(v12, a2);
  }
}

uint64_t sub_191C7100C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_191C0B190(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_191C71CC8(v11, sub_191C0B13C);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_191C710D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_191C0DAF0(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_191CC73D8();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_191CC5FB8();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}