void sub_29C8E91EC()
{
  v8[6] = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDB8E50];
  v1 = *MEMORY[0x29EDB81C8];
  v8[0] = *MEMORY[0x29EDB8210];
  v8[1] = v1;
  v2 = *MEMORY[0x29EDB81F0];
  v8[2] = *MEMORY[0x29EDB81E8];
  v8[3] = v2;
  v3 = *MEMORY[0x29EDB8260];
  v8[4] = *MEMORY[0x29EDB81E0];
  v8[5] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:6];
  v5 = [v0 setWithArray:v4];
  v6 = qword_2A1A11BE8;
  qword_2A1A11BE8 = v5;

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C8E92D8(uint64_t result)
{
  v1 = result;
  if (*(result + 48) != *(result + 49))
  {
    v2 = *(result + 32);
    v3 = *MEMORY[0x29EDC5D60];
    SetExternalSourceEnabledForDataType();
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    result = SetAccountNameEnabledForDataType();
  }

  if (*(v1 + 50) != *(v1 + 51))
  {
    v6 = *(v1 + 32);
    v7 = *MEMORY[0x29EDC5D58];
    SetExternalSourceEnabledForDataType();
    v8 = *(v1 + 40);
    v9 = *(v1 + 50);
    result = SetAccountNameEnabledForDataType();
  }

  if (*(v1 + 52) != *(v1 + 53))
  {
    v10 = *(v1 + 32);
    v11 = *MEMORY[0x29EDC5D68];
    SetExternalSourceEnabledForDataType();
    v12 = *(v1 + 40);
    v13 = *(v1 + 52);
    result = SetAccountNameEnabledForDataType();
  }

  if (*(v1 + 54) != *(v1 + 55))
  {
    v14 = *(v1 + 32);
    v15 = *MEMORY[0x29EDC5D70];
    SetExternalSourceEnabledForDataType();
    v16 = *(v1 + 40);
    v17 = *(v1 + 54);

    return SetAccountNameEnabledForDataType();
  }

  return result;
}