uint64_t sub_1C215F06C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25028, &qword_1C2180C40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v32 - v16;
  v18 = *(v15 + 56);
  sub_1C20EB3E8(a1, &v32 - v16, &qword_1EBF25010, &qword_1C2180C08);
  sub_1C20EB3E8(a2, &v17[v18], &qword_1EBF25010, &qword_1C2180C08);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1C20EB3E8(v17, v12, &qword_1EBF25010, &qword_1C2180C08);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1C215E85C(&v17[v18], v8, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      v20 = sub_1C215ECD8(v12, v8);
      sub_1C215E7FC(v8, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      sub_1C215E7FC(v12, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      sub_1C20EB498(v17, &qword_1EBF25010, &qword_1C2180C08);
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    sub_1C215E7FC(v12, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
LABEL_6:
    sub_1C20EB498(v17, &qword_1EBF25028, &qword_1C2180C40);
    goto LABEL_14;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C20EB498(v17, &qword_1EBF25010, &qword_1C2180C08);
LABEL_8:
  v21 = type metadata accessor for CableRelayConnectionRequest(0);
  if (sub_1C21546B8(*(a1 + v21[5]), *(a2 + v21[5])))
  {
    v22 = v21[7];
    v24 = *(a1 + v22);
    v23 = *(a1 + v22 + 8);
    v25 = (a2 + v22);
    v27 = *v25;
    v26 = v25[1];
    if (v23 >> 60 == 15)
    {
      if (v26 >> 60 == 15)
      {
        sub_1C20B22B8(v24, v23);
        sub_1C20B22B8(v27, v26);
        sub_1C20B23C8(v24, v23);
LABEL_17:
        v31 = v21[6];
        sub_1C21703B4();
        sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
        v28 = sub_1C21708E4();
        return v28 & 1;
      }

      goto LABEL_13;
    }

    if (v26 >> 60 == 15)
    {
LABEL_13:
      sub_1C20B22B8(v24, v23);
      sub_1C20B22B8(v27, v26);
      sub_1C20B23C8(v24, v23);
      sub_1C20B23C8(v27, v26);
      goto LABEL_14;
    }

    sub_1C20B22B8(v24, v23);
    sub_1C20B22B8(v27, v26);
    v30 = sub_1C21068CC(v24, v23, v27, v26);
    sub_1C20B23C8(v27, v26);
    sub_1C20B23C8(v24, v23);
    if (v30)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1C215F4A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableRelayConnectionRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25060, &qword_1C2180C98);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v33 = type metadata accessor for CableRelayPushMessage(0);
  v34 = a1;
  v17 = *(v33 + 20);
  v18 = *(v13 + 56);
  sub_1C20EB3E8(a1 + v17, v16, &qword_1EBF23678, &unk_1C2180C70);
  sub_1C20EB3E8(a2 + v17, &v16[v18], &qword_1EBF23678, &unk_1C2180C70);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C20EB3E8(v16, v11, &qword_1EBF23678, &unk_1C2180C70);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v32;
      sub_1C215E85C(&v16[v18], v32, type metadata accessor for CableRelayConnectionRequest);
      v21 = sub_1C215F06C(v11, v20);
      sub_1C215E7FC(v20, type metadata accessor for CableRelayConnectionRequest);
      sub_1C215E7FC(v11, type metadata accessor for CableRelayConnectionRequest);
      sub_1C20EB498(v16, &qword_1EBF23678, &unk_1C2180C70);
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_1C215E7FC(v11, type metadata accessor for CableRelayConnectionRequest);
LABEL_6:
    sub_1C20EB498(v16, &qword_1EBF25060, &qword_1C2180C98);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C20EB498(v16, &qword_1EBF23678, &unk_1C2180C70);
LABEL_8:
  v22 = *(v33 + 24);
  v24 = *(v34 + v22);
  v23 = *(v34 + v22 + 8);
  v25 = (a2 + v22);
  v27 = *v25;
  v26 = v25[1];
  if (v23 >> 60 == 15)
  {
    if (v26 >> 60 == 15)
    {
      sub_1C20B22B8(v24, v23);
      sub_1C20B22B8(v27, v26);
      sub_1C20B23C8(v24, v23);
LABEL_16:
      sub_1C21703B4();
      sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
      v28 = sub_1C21708E4();
      return v28 & 1;
    }

    goto LABEL_12;
  }

  if (v26 >> 60 == 15)
  {
LABEL_12:
    sub_1C20B22B8(v24, v23);
    sub_1C20B22B8(v27, v26);
    sub_1C20B23C8(v24, v23);
    sub_1C20B23C8(v27, v26);
    goto LABEL_13;
  }

  sub_1C20B22B8(v24, v23);
  sub_1C20B22B8(v27, v26);
  v30 = sub_1C21068CC(v24, v23, v27, v26);
  sub_1C20B23C8(v27, v26);
  sub_1C20B23C8(v24, v23);
  if (v30)
  {
    goto LABEL_16;
  }

LABEL_13:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1C215F8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableResponse.OneOf_Response(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FE8, &qword_1C2180BF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = type metadata accessor for CableResponse(0);
  v16 = v15[6];
  v17 = a1;
  v19 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v20 = a2;
  v21 = (a2 + v16);
  v23 = *v21;
  v22 = v21[1];
  if (v18 >> 60 != 15)
  {
    if (v22 >> 60 != 15)
    {
      v38 = v7;
      sub_1C20B22B8(v19, v18);
      sub_1C20B22B8(v23, v22);
      v26 = sub_1C21068CC(v19, v18, v23, v22);
      sub_1C20B23C8(v23, v22);
      sub_1C20B23C8(v19, v18);
      if ((v26 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_5:
    sub_1C20B22B8(v19, v18);
    sub_1C20B22B8(v23, v22);
    sub_1C20B23C8(v19, v18);
    sub_1C20B23C8(v23, v22);
    goto LABEL_6;
  }

  if (v22 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v38 = v7;
  sub_1C20B22B8(v19, v18);
  sub_1C20B22B8(v23, v22);
  sub_1C20B23C8(v19, v18);
LABEL_9:
  v27 = v15[7];
  v28 = *(v17 + v27);
  v29 = *(v20 + v27);
  if (v28 == 5)
  {
    if (v29 != 5)
    {
      goto LABEL_6;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_6;
  }

  v30 = *(v11 + 48);
  sub_1C20EB3E8(v17, v14, &qword_1EBF24FD0, &unk_1C2180BE0);
  sub_1C20EB3E8(v20, &v14[v30], &qword_1EBF24FD0, &unk_1C2180BE0);
  v31 = v41;
  v32 = *(v40 + 48);
  if (v32(v14, 1, v41) == 1)
  {
    if (v32(&v14[v30], 1, v31) == 1)
    {
      sub_1C20EB498(v14, &qword_1EBF24FD0, &unk_1C2180BE0);
LABEL_20:
      v37 = v15[5];
      sub_1C21703B4();
      sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
      v24 = sub_1C21708E4();
      return v24 & 1;
    }

    goto LABEL_18;
  }

  v33 = v39;
  sub_1C20EB3E8(v14, v39, &qword_1EBF24FD0, &unk_1C2180BE0);
  if (v32(&v14[v30], 1, v31) == 1)
  {
    sub_1C215E7FC(v33, type metadata accessor for CableResponse.OneOf_Response);
LABEL_18:
    sub_1C20EB498(v14, &qword_1EBF24FE8, &qword_1C2180BF8);
    goto LABEL_6;
  }

  v34 = &v14[v30];
  v35 = v38;
  sub_1C215E85C(v34, v38, type metadata accessor for CableResponse.OneOf_Response);
  v36 = sub_1C215FD6C(v33, v35);
  sub_1C215E7FC(v35, type metadata accessor for CableResponse.OneOf_Response);
  sub_1C215E7FC(v33, type metadata accessor for CableResponse.OneOf_Response);
  sub_1C20EB498(v14, &qword_1EBF24FD0, &unk_1C2180BE0);
  if (v36)
  {
    goto LABEL_20;
  }

LABEL_6:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1C215FD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableResponse.StateDeleteResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CableResponse.AllocationResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CableResponse.OneOf_Response(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FF0, &qword_1C2180C00);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_1C2160F40(a1, &v31 - v22, type metadata accessor for CableResponse.OneOf_Response);
  sub_1C2160F40(a2, &v23[v24], type metadata accessor for CableResponse.OneOf_Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2160F40(v23, v16, type metadata accessor for CableResponse.OneOf_Response);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E85C(&v23[v24], v7, type metadata accessor for CableResponse.StateDeleteResponse);
      sub_1C21703B4();
      sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
      v25 = sub_1C21708E4();
      sub_1C215E7FC(v7, type metadata accessor for CableResponse.StateDeleteResponse);
      v26 = v16;
      v27 = type metadata accessor for CableResponse.StateDeleteResponse;
LABEL_9:
      sub_1C215E7FC(v26, v27);
      sub_1C215E7FC(v23, type metadata accessor for CableResponse.OneOf_Response);
      return v25 & 1;
    }

    v28 = type metadata accessor for CableResponse.StateDeleteResponse;
    v29 = v16;
  }

  else
  {
    sub_1C2160F40(v23, v18, type metadata accessor for CableResponse.OneOf_Response);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C215E85C(&v23[v24], v11, type metadata accessor for CableResponse.AllocationResponse);
      v25 = sub_1C2160120(v18, v11);
      sub_1C215E7FC(v11, type metadata accessor for CableResponse.AllocationResponse);
      v26 = v18;
      v27 = type metadata accessor for CableResponse.AllocationResponse;
      goto LABEL_9;
    }

    v28 = type metadata accessor for CableResponse.AllocationResponse;
    v29 = v18;
  }

  sub_1C215E7FC(v29, v28);
  sub_1C20EB498(v23, &qword_1EBF24FF0, &qword_1C2180C00);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1C2160120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableResponse.AllocationResponse(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_1C20B22B8(v7, v6);
      sub_1C20B22B8(v10, v9);
      sub_1C20B23C8(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    sub_1C20B22B8(v7, v6);
    sub_1C20B22B8(v10, v9);
    sub_1C20B23C8(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_6:
    sub_1C20B23C8(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1C20B22B8(v7, v6);
  sub_1C20B22B8(v10, v9);
  v14 = sub_1C21068CC(v7, v6, v10, v9);
  sub_1C20B23C8(v10, v9);
  sub_1C20B23C8(v7, v6);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v15 = v4[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[7];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 != 15)
  {
    if (v24 >> 60 == 15)
    {
      goto LABEL_19;
    }

    sub_1C20B22B8(v22, v21);
    sub_1C20B22B8(v25, v24);
    v26 = sub_1C21068CC(v22, v21, v25, v24);
    sub_1C20B23C8(v25, v24);
    sub_1C20B23C8(v22, v21);
    if (v26)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v24 >> 60 != 15)
  {
LABEL_19:
    sub_1C20B22B8(v22, v21);
    sub_1C20B22B8(v25, v24);
    sub_1C20B23C8(v22, v21);
    v11 = v25;
    v12 = v24;
    goto LABEL_6;
  }

  sub_1C20B22B8(v22, v21);
  sub_1C20B22B8(v25, v24);
  sub_1C20B23C8(v22, v21);
LABEL_21:
  sub_1C21703B4();
  sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
  return sub_1C21708E4() & 1;
}

uint64_t sub_1C21603C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableRequest.OneOf_Request(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FA0, &qword_1C2180BD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for CableRequest(0);
  v15 = *(v14 + 24);
  v16 = a1;
  v18 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v19 = a2;
  v20 = (a2 + v15);
  v21 = *v20;
  v22 = v20[1];
  if (v17 >> 60 != 15)
  {
    if (v22 >> 60 != 15)
    {
      v32 = v14;
      sub_1C20B22B8(v18, v17);
      sub_1C20B22B8(v21, v22);
      v23 = sub_1C21068CC(v18, v17, v21, v22);
      sub_1C20B23C8(v21, v22);
      sub_1C20B23C8(v18, v17);
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

LABEL_5:
    sub_1C20B22B8(v18, v17);
    sub_1C20B22B8(v21, v22);
    sub_1C20B23C8(v18, v17);
    sub_1C20B23C8(v21, v22);
    goto LABEL_13;
  }

  if (v22 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v32 = v14;
  sub_1C20B22B8(v18, v17);
  sub_1C20B22B8(v21, v22);
  sub_1C20B23C8(v18, v17);
LABEL_7:
  v24 = *(v10 + 48);
  sub_1C20EB3E8(v16, v13, &qword_1EBF23760, &qword_1C2176DC8);
  sub_1C20EB3E8(v19, &v13[v24], &qword_1EBF23760, &qword_1C2176DC8);
  v25 = *(v35 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v24], 1, v4) == 1)
    {
      sub_1C20EB498(v13, &qword_1EBF23760, &qword_1C2176DC8);
LABEL_16:
      v31 = *(v32 + 20);
      sub_1C21703B4();
      sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
      v27 = sub_1C21708E4();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  v26 = v34;
  sub_1C20EB3E8(v13, v34, &qword_1EBF23760, &qword_1C2176DC8);
  if (v25(&v13[v24], 1, v4) == 1)
  {
    sub_1C215E7FC(v26, type metadata accessor for CableRequest.OneOf_Request);
LABEL_12:
    sub_1C20EB498(v13, &qword_1EBF24FA0, &qword_1C2180BD0);
    goto LABEL_13;
  }

  v29 = v33;
  sub_1C215E85C(&v13[v24], v33, type metadata accessor for CableRequest.OneOf_Request);
  v30 = sub_1C2160824(v26, v29);
  sub_1C215E7FC(v29, type metadata accessor for CableRequest.OneOf_Request);
  sub_1C215E7FC(v26, type metadata accessor for CableRequest.OneOf_Request);
  sub_1C20EB498(v13, &qword_1EBF23760, &qword_1C2176DC8);
  if (v30)
  {
    goto LABEL_16;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C2160824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableRequest.StateDeleteRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CableRequest.AllocationRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CableRequest.OneOf_Request(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FB0, &qword_1C2180BD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_1C2160F40(a1, &v31 - v22, type metadata accessor for CableRequest.OneOf_Request);
  sub_1C2160F40(a2, &v23[v24], type metadata accessor for CableRequest.OneOf_Request);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2160F40(v23, v16, type metadata accessor for CableRequest.OneOf_Request);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E85C(&v23[v24], v7, type metadata accessor for CableRequest.StateDeleteRequest);
      v25 = sub_1C2160B90(v16, v7);
      sub_1C215E7FC(v7, type metadata accessor for CableRequest.StateDeleteRequest);
      v26 = v16;
      v27 = type metadata accessor for CableRequest.StateDeleteRequest;
LABEL_9:
      sub_1C215E7FC(v26, v27);
      sub_1C215E7FC(v23, type metadata accessor for CableRequest.OneOf_Request);
      return v25 & 1;
    }

    v28 = type metadata accessor for CableRequest.StateDeleteRequest;
    v29 = v16;
  }

  else
  {
    sub_1C2160F40(v23, v18, type metadata accessor for CableRequest.OneOf_Request);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C215E85C(&v23[v24], v11, type metadata accessor for CableRequest.AllocationRequest);
      v25 = sub_1C2160D14(v18, v11);
      sub_1C215E7FC(v11, type metadata accessor for CableRequest.AllocationRequest);
      v26 = v18;
      v27 = type metadata accessor for CableRequest.AllocationRequest;
      goto LABEL_9;
    }

    v28 = type metadata accessor for CableRequest.AllocationRequest;
    v29 = v18;
  }

  sub_1C215E7FC(v29, v28);
  sub_1C20EB498(v23, &qword_1EBF24FB0, &qword_1C2180BD8);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1C2160B90(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CableRequest.StateDeleteRequest(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      sub_1C20B22B8(v6, v5);
      sub_1C20B22B8(v9, v8);
      v11 = sub_1C21068CC(v6, v5, v9, v8);
      sub_1C20B23C8(v9, v8);
      sub_1C20B23C8(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    sub_1C20B22B8(v6, v5);
    sub_1C20B22B8(v9, v8);
    sub_1C20B23C8(v6, v5);
    sub_1C20B23C8(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  sub_1C20B22B8(v6, v5);
  sub_1C20B22B8(v9, v8);
  sub_1C20B23C8(v6, v5);
LABEL_8:
  sub_1C21703B4();
  sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
  return sub_1C21708E4() & 1;
}

uint64_t sub_1C2160D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableRequest.AllocationRequest(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_1C20B22B8(v7, v6);
      sub_1C20B22B8(v10, v9);
      sub_1C20B23C8(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    sub_1C20B22B8(v7, v6);
    sub_1C20B22B8(v10, v9);
    sub_1C20B23C8(v7, v6);
    sub_1C20B23C8(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1C20B22B8(v7, v6);
  sub_1C20B22B8(v10, v9);
  v12 = sub_1C21068CC(v7, v6, v10, v9);
  sub_1C20B23C8(v10, v9);
  sub_1C20B23C8(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 2)
  {
    if (v15 != 2 && ((v14 ^ v15) & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

LABEL_13:
  sub_1C21703B4();
  sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
  return sub_1C21708E4() & 1;
}

unint64_t sub_1C2160EEC()
{
  result = qword_1EBF24FD8;
  if (!qword_1EBF24FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24FD8);
  }

  return result;
}

uint64_t sub_1C2160F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C2160FC8()
{
  result = qword_1EBF25050;
  if (!qword_1EBF25050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25050);
  }

  return result;
}

uint64_t sub_1C2161074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C21611A8()
{
  sub_1C21615D4(319, &qword_1EBF250A8, type metadata accessor for CableRequest.OneOf_Request);
  if (v0 <= 0x3F)
  {
    sub_1C21703B4();
    if (v1 <= 0x3F)
    {
      sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C21612D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_1C21703B4();
  if (v11 <= 0x3F)
  {
    sub_1C2161CF4(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v12 <= 0x3F)
    {
      sub_1C2161CF4(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C21613EC()
{
  sub_1C21703B4();
  if (v0 <= 0x3F)
  {
    sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C21614BC()
{
  sub_1C21615D4(319, &qword_1EBF250F0, type metadata accessor for CableResponse.OneOf_Response);
  if (v0 <= 0x3F)
  {
    sub_1C21703B4();
    if (v1 <= 0x3F)
    {
      sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C2161CF4(319, &qword_1EBF250F8, &type metadata for CableResponse.ResponseStatus, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C21615D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2170D24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C2161660()
{
  result = sub_1C21703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C21616F4()
{
  sub_1C21615D4(319, &qword_1EBF25120, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
  if (v0 <= 0x3F)
  {
    sub_1C2161CF4(319, &qword_1EBF25128, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C21703B4();
      if (v2 <= 0x3F)
      {
        sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C216185C()
{
  sub_1C21703B4();
  if (v0 <= 0x3F)
  {
    sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2161978()
{
  sub_1C21703B4();
  if (v0 <= 0x3F)
  {
    sub_1C21615D4(319, &qword_1EBF25178, type metadata accessor for CableRelayConnectionRequest);
    if (v1 <= 0x3F)
    {
      sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C21703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_1C2161C0C()
{
  sub_1C21703B4();
  if (v0 <= 0x3F)
  {
    sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C2161CF4(319, &qword_1EBF25190, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2161CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C2161D48()
{
  result = qword_1EBF25198;
  if (!qword_1EBF25198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25198);
  }

  return result;
}

unint64_t sub_1C2161DA0()
{
  result = qword_1EBF251A0;
  if (!qword_1EBF251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251A0);
  }

  return result;
}

unint64_t sub_1C2161DF8()
{
  result = qword_1EBF251A8;
  if (!qword_1EBF251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251A8);
  }

  return result;
}

unint64_t sub_1C2161E50()
{
  result = qword_1EBF251B0;
  if (!qword_1EBF251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251B0);
  }

  return result;
}

unint64_t sub_1C2161EA8()
{
  result = qword_1EBF251B8;
  if (!qword_1EBF251B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251B8);
  }

  return result;
}

unint64_t sub_1C2161F00()
{
  result = qword_1EBF251C0;
  if (!qword_1EBF251C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251C0);
  }

  return result;
}

id ASCRelatedOriginFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C2161FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E696769726FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C2162080(uint64_t a1)
{
  v2 = sub_1C216395C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21620BC(uint64_t a1)
{
  v2 = sub_1C216395C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C21620F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C21637D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C2162124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_1C216FCB4();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_1C2170024();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v13 = sub_1C216FDA4();
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C21622E8, 0, 0);
}

uint64_t sub_1C21622E8()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v6 = v0[5];
  v5 = v0[6];
  sub_1C216FD94();
  sub_1C216FD84();

  MEMORY[0x1C6913010](v6, v5);
  MEMORY[0x1C6913020](0xD000000000000015, 0x80000001C21870A0);
  sub_1C216FD54();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1C20DD6F0(v0[11]);
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v7 = sub_1C21705A4();
    __swift_project_value_buffer(v7, qword_1EDD4CB08);
    v8 = sub_1C2170584();
    v9 = sub_1C2170C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C20AD000, v8, v9, "Failed to create /.well-known/webauthn URL", v10, 2u);
      MEMORY[0x1C6915360](v10, -1, -1);
    }

    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[16];

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    v14 = v0[18];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[10];
    v17 = v0[11];

    v19 = v0[1];

    return v19(0);
  }

  else
  {
    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[12];
    v24 = v0[13];
    v25 = v0[10];
    v26 = v0[7];
    (*(v24 + 32))(v21, v0[11], v23);
    (*(v24 + 16))(v22, v21, v23);
    sub_1C216FC84();
    sub_1C216FCA4();
    v27 = [objc_opt_self() defaultSessionConfiguration];
    v0[19] = v27;
    v0[20] = [objc_opt_self() sessionWithConfiguration:v27 delegate:v26 delegateQueue:0];
    v28 = *(MEMORY[0x1E6969EC0] + 4);
    v29 = swift_task_alloc();
    v0[21] = v29;
    *v29 = v0;
    v29[1] = sub_1C21626AC;
    v30 = v0[10];

    return MEMORY[0x1EEDC6260](v30, 0);
  }
}

uint64_t sub_1C21626AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 168);
  v9 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;
  v5[25] = v3;

  if (v3)
  {
    v7 = sub_1C2162AA4;
  }

  else
  {
    v7 = sub_1C21627C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C21627C4()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_1C216FCE4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1C216FCD4();
  sub_1C21630C4();
  sub_1C216FCC4();
  if (v1)
  {
    v7 = v0[23];
    v8 = v0[22];
    v9 = v0[20];
    v39 = v0[19];
    v40 = v0[24];
    v10 = v0[17];
    v45 = v0[16];
    v47 = v0[18];
    v11 = v0[13];
    v41 = v0[12];
    v43 = v0[15];
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[8];

    sub_1C20D3174(v8, v7);
    (*(v12 + 8))(v13, v14);
    (*(v11 + 8))(v43, v41);
    (*(v10 + 8))(v47, v45);
    v15 = v0[18];
    v16 = v0[14];
    v17 = v0[15];
    v19 = v0[10];
    v18 = v0[11];

    v20 = v0[1];
    v21 = 0;
  }

  else
  {
    v23 = v0[3];
    v22 = v0[4];

    v24 = v0[2];
    v25 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v26 = sub_1C21708F4();
    v27 = [v25 initWithString_];

    v28 = v0[20];
    if (v27)
    {
      v49 = sub_1C2163118(v27, v24);
    }

    else
    {

      v49 = 0;
    }

    v29 = v0[24];
    v30 = v0[18];
    v31 = v0[19];
    v32 = v0[17];
    v33 = v0[15];
    v44 = v0[16];
    v46 = v0[14];
    v34 = v0[13];
    v42 = v0[12];
    v35 = v0[10];
    v48 = v0[11];
    v37 = v0[8];
    v36 = v0[9];
    sub_1C20D3174(v0[22], v0[23]);

    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v33, v42);
    (*(v32 + 8))(v30, v44);

    v20 = v0[1];
    v21 = v49 & 1;
  }

  return v20(v21);
}

uint64_t sub_1C2162AA4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v18 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v18, v3);
  v10 = *(v0 + 200);
  v11 = *(v0 + 144);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_1C2162D50(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1C2170914();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_1C2170914();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1C2162E4C;

  return sub_1C2162124(v6, v8, v9, v11);
}

uint64_t sub_1C2162E4C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 24);
  if (v3)
  {
    v13 = sub_1C216FF84();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v14 = *(v11 + 8);

  return v14();
}

id ASCRelatedOriginFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCRelatedOriginFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ASCRelatedOriginFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCRelatedOriginFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C21630C4()
{
  result = qword_1EBF251D8;
  if (!qword_1EBF251D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251D8);
  }

  return result;
}

uint64_t sub_1C2163118(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_1C2170024();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1E69E7CD0];
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a2 + 32;
    v16 = (v10 + 48);
    v46 = (v10 + 8);
    v47 = (v10 + 32);
    v42 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = a1;
    v44 = v13;
    v45 = a2 + 32;
    while (1)
    {
      v17 = (v15 + 16 * v14);
      v19 = *v17;
      v18 = v17[1];

      sub_1C2170014();

      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_1C20DD6F0(v7);
      }

      else
      {
        (*v47)(v12, v7, v8);
        sub_1C216FFE4();
        if (!v20)
        {
          goto LABEL_21;
        }

        v21 = sub_1C21708F4();

        v22 = [v21 safari_stringByRemovingTopLevelDomainFromHost];

        if (!v22)
        {
          goto LABEL_21;
        }

        v23 = sub_1C2170914();
        v25 = v24;

        v48[0] = v23;
        v48[1] = v25;
        v48[9] = 46;
        v48[10] = 0xE100000000000000;
        sub_1C21197CC();
        v26 = sub_1C2170D84();

        v27 = *(v26 + 16);
        if (!v27)
        {

          v15 = v45;
LABEL_21:
          (*v46)(v12, v8);
          goto LABEL_4;
        }

        v28 = (v26 + 16 + 16 * v27);
        v30 = *v28;
        v29 = v28[1];

        v31 = v49;
        if (!*(v49 + 16))
        {
          goto LABEL_22;
        }

        v32 = *(v49 + 40);
        sub_1C2171434();
        sub_1C21709B4();
        v33 = sub_1C2171454();
        v34 = -1 << *(v31 + 32);
        v35 = v33 & ~v34;
        if ((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (1)
          {
            v37 = (*(v31 + 48) + 16 * v35);
            v38 = *v37 == v30 && v37[1] == v29;
            if (v38 || (sub_1C2171324() & 1) != 0)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          v12 = v42;
          a1 = v43;
LABEL_24:
          v39 = sub_1C216FFB4();
          v40 = [a1 safari:v39 hasSameOriginAsURL:?];

          (*v46)(v12, v8);
          v13 = v44;
          v15 = v45;
          if (v40)
          {
            v13 = 1;
            break;
          }

          goto LABEL_4;
        }

LABEL_18:
        v12 = v42;
        a1 = v43;
        if (*(v31 + 16) != 5)
        {
LABEL_22:
          sub_1C214C8C4(v48, v30, v29);

          goto LABEL_24;
        }

        (*v46)(v42, v8);

        v13 = v44;
        v15 = v45;
      }

LABEL_4:
      if (++v14 == v13)
      {
        v13 = 0;
        break;
      }
    }
  }

  return v13;
}

uint64_t dispatch thunk of ASCRelatedOriginFetcher.isOrigin(_:relatedToRelyingPartyIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1C21636CC;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1C21636CC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void *sub_1C21637D8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251E8, &qword_1C2181098);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216395C();
  sub_1C2171464();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C21639B0();
    sub_1C21711D4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

unint64_t sub_1C216395C()
{
  result = qword_1EBF251F0;
  if (!qword_1EBF251F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251F0);
  }

  return result;
}

unint64_t sub_1C21639B0()
{
  result = qword_1EBF23E10;
  if (!qword_1EBF23E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF236E0, &qword_1C2176D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E10);
  }

  return result;
}

uint64_t sub_1C2163A2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C20DBD8C;

  return sub_1C2162D50(v2, v3, v5, v4);
}

unint64_t sub_1C2163B00()
{
  result = qword_1EBF251F8;
  if (!qword_1EBF251F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251F8);
  }

  return result;
}

unint64_t sub_1C2163B58()
{
  result = qword_1EBF25200;
  if (!qword_1EBF25200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25200);
  }

  return result;
}

unint64_t sub_1C2163BB0()
{
  result = qword_1EBF25208;
  if (!qword_1EBF25208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25208);
  }

  return result;
}

uint64_t sub_1C2163C04(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    sub_1C2164C50();
    a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      v4 = sub_1C21713D4();
    }

    else
    {
      sub_1C2171034();
      v4 = 0;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

uint64_t sub_1C2163D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      v4 = sub_1C21713D4();
    }

    else
    {
      sub_1C2171034();
      v4 = 0;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

uint64_t sub_1C2163E0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
  }

  else
  {
    sub_1C20D865C(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      a1 = sub_1C21713D4();
    }

    else
    {
      sub_1C2171034();
      a1 = 0;
    }

    sub_1C20D3174(a3, a4);
  }

  return a1;
}

uint64_t sub_1C2163F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {

    return a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      v3 = sub_1C21713D4();

      return v3;
    }

    else
    {
      sub_1C2171034();
      return 0;
    }
  }
}

uint64_t sub_1C2164014@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v7 = sub_1C2170964();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C2170224();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CableRequest.AllocationRequest(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  sub_1C21703A4();
  v23 = &v22[*(v16 + 28)];
  v36 = xmmword_1C21769B0;
  *v23 = xmmword_1C21769B0;
  v24 = *(v16 + 32);
  v22[v24] = 2;
  v25 = *v23;
  v26 = *(v23 + 1);
  *v23 = a1;
  *(v23 + 1) = a2;
  sub_1C20D865C(a1, a2);
  sub_1C20B23C8(v25, v26);
  v22[v24] = v37;
  v27 = type metadata accessor for CableRequest.OneOf_Request(0);
  v28 = *(*(v27 - 8) + 56);
  v28(a4, 1, 1, v27);
  v29 = type metadata accessor for CableRequest(0);
  v30 = a4 + *(v29 + 20);
  sub_1C21703A4();
  v31 = a4 + *(v29 + 24);
  *v31 = v36;
  sub_1C2164C9C(v22, v20, type metadata accessor for CableRequest.AllocationRequest);
  sub_1C20EB498(a4, &qword_1EBF23760, &qword_1C2176DC8);
  sub_1C2164D04(v20, a4, type metadata accessor for CableRequest.AllocationRequest);
  swift_storeEnumTagMultiPayload();
  v28(a4, 0, 1, v27);
  sub_1C2170214();
  sub_1C2170204();
  (*(v38 + 8))(v14, v39);
  sub_1C2170954();
  v32 = sub_1C2170924();
  v34 = v33;

  result = (*(v40 + 8))(v10, v41);
  if (v34 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1C20B23C8(*v31, *(v31 + 8));
    *v31 = v32;
    *(v31 + 8) = v34;
    return sub_1C2164D6C(v22, type metadata accessor for CableRequest.AllocationRequest);
  }

  return result;
}

uint64_t sub_1C216439C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CableResponse.AllocationResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1C2164BE0(v2, &v19 - v14);
  v16 = type metadata accessor for CableResponse.OneOf_Response(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_4;
  }

  sub_1C2164BE0(v15, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2164D6C(v13, type metadata accessor for CableResponse.OneOf_Response);
LABEL_4:
    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_1C20EB498(v15, &qword_1EBF24FD0, &unk_1C2180BE0);
  }

  sub_1C2164D04(v13, v8, type metadata accessor for CableResponse.AllocationResponse);
  v17 = (v5 + 56);
  if (sub_1C2164628())
  {
    sub_1C2164D04(v8, a1, type metadata accessor for CableResponse.AllocationResponse);
    (*v17)(a1, 0, 1, v4);
  }

  else
  {
    sub_1C2164D6C(v8, type metadata accessor for CableResponse.AllocationResponse);
    (*v17)(a1, 1, 1, v4);
  }

  return sub_1C20EB498(v15, &qword_1EBF24FD0, &unk_1C2180BE0);
}

uint64_t sub_1C2164628()
{
  v1 = type metadata accessor for CableResponse.AllocationResponse(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v29 - v7;
  if (*(v0 + *(v6 + 20) + 8) >> 60 != 15)
  {
    if (*(v0 + *(v6 + 24) + 4) != 1)
    {
      return 1;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v18 = sub_1C21705A4();
    __swift_project_value_buffer(v18, qword_1EDD4CB08);
    sub_1C2164C9C(v0, v8, type metadata accessor for CableResponse.AllocationResponse);
    v19 = sub_1C2170584();
    v20 = sub_1C2170C54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      v23 = sub_1C21649FC();
      v25 = v24;
      sub_1C2164D6C(v8, type metadata accessor for CableResponse.AllocationResponse);
      v26 = sub_1C20D7F2C(v23, v25, &v30);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1C20AD000, v19, v20, "Allocation response is missing domain: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1C6915360](v22, -1, -1);
      MEMORY[0x1C6915360](v21, -1, -1);

      return 0;
    }

    v27 = v8;
LABEL_14:
    sub_1C2164D6C(v27, type metadata accessor for CableResponse.AllocationResponse);
    return 0;
  }

  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v9 = sub_1C21705A4();
  __swift_project_value_buffer(v9, qword_1EDD4CB08);
  sub_1C2164C9C(v0, v5, type metadata accessor for CableResponse.AllocationResponse);
  v10 = sub_1C2170584();
  v11 = sub_1C2170C54();
  if (!os_log_type_enabled(v10, v11))
  {

    v27 = v5;
    goto LABEL_14;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v30 = v13;
  *v12 = 136315138;
  v14 = sub_1C21649FC();
  v16 = v15;
  sub_1C2164D6C(v5, type metadata accessor for CableResponse.AllocationResponse);
  v17 = sub_1C20D7F2C(v14, v16, &v30);

  *(v12 + 4) = v17;
  _os_log_impl(&dword_1C20AD000, v10, v11, "Allocation response is missing routingID: %s", v12, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x1C6915360](v13, -1, -1);
  MEMORY[0x1C6915360](v12, -1, -1);

  return 0;
}

uint64_t sub_1C21649FC()
{
  v1 = type metadata accessor for CableResponse.AllocationResponse(0);
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    sub_1C20B22B8(v3, v4);
  }

  v5 = v1[7];
  v6 = (v0 + v1[6]);
  v7 = *v6;
  v8 = *(v6 + 4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  if (v10 >> 60 != 15)
  {
    sub_1C20B22B8(*(v0 + v5), *(v0 + v5 + 8));
  }

  sub_1C2170F34();
  MEMORY[0x1C6913CB0](0xD000000000000020, 0x80000001C2187160);
  v11 = sub_1C2163E0C(0x3E6C696E3CLL, 0xE500000000000000, v3, v4);
  MEMORY[0x1C6913CB0](v11);

  MEMORY[0x1C6913CB0](0xD000000000000011, 0x80000001C2187190);
  v12 = sub_1C2163F1C(0x3E6C696E3CLL, 0xE500000000000000, v7 | (v8 << 32));
  MEMORY[0x1C6913CB0](v12);

  MEMORY[0x1C6913CB0](0x6361746E6F63203BLL, 0xED0000203A444974);
  v13 = sub_1C2163E0C(0x3E6C696E3CLL, 0xE500000000000000, v9, v10);
  MEMORY[0x1C6913CB0](v13);

  MEMORY[0x1C6913CB0](62, 0xE100000000000000);
  sub_1C20B23C8(v9, v10);
  sub_1C20B23C8(v3, v4);
  return 0;
}

uint64_t sub_1C2164BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2164C50()
{
  result = qword_1EBF25210;
  if (!qword_1EBF25210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF25210);
  }

  return result;
}

uint64_t sub_1C2164C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2164D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2164D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CodingUserInfoKey.CBOREncodingFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t sub_1C2164E58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF25238, &unk_1C2181280);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C2171054();
  __swift_allocate_value_buffer(v4, qword_1EBF25218);
  v5 = __swift_project_value_buffer(v4, qword_1EBF25218);
  sub_1C2171044();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.as_CBOREncodingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2171054();
  v3 = __swift_project_value_buffer(v2, qword_1EBF25218);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C2165034()
{
  result = qword_1EBF25230;
  if (!qword_1EBF25230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25230);
  }

  return result;
}

id ASProgressiveBackoffManager.__allocating_init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDurationSeconds:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1C21714B4();
  v7 = v6;
  v8 = type metadata accessor for ASProgressiveBackoffManager();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v9[14] = a1;
  v9[15] = v5;
  v9[16] = v7;
  v9[17] = v10;
  v13.receiver = v9;
  v13.super_class = v8;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

id ASProgressiveBackoffManager.init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDurationSeconds:)(uint64_t a1)
{
  v2 = sub_1C21714B4();
  v4 = v3;
  v5 = type metadata accessor for ASProgressiveBackoffManager();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v6[14] = a1;
  v6[15] = v2;
  v6[16] = v4;
  v6[17] = v7;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id ASProgressiveBackoffManager.__allocating_init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v7[14] = a1;
  v7[15] = a2;
  v7[16] = a3;
  v7[17] = v8;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ASProgressiveBackoffManager.init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v3[14] = a1;
  v3[15] = a2;
  v3[16] = a3;
  v3[17] = v7;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ASProgressiveBackoffManager();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1C21653D4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C21653F8, v2, 0);
}

uint64_t sub_1C21653F8()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = *(v1 + 136);

    v6 = sub_1C2121F88(v4, v3);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);

      goto LABEL_6;
    }
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v17 = *(v9 + 112);
  v12 = *(v9 + 128);
  type metadata accessor for ASProgressiveBackoffManager.Context();
  v8 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;
  *(v8 + 128) = v17;
  *(v8 + 144) = v12;
  *(v8 + 152) = 12;
  swift_beginAccess();

  v13 = *(v1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v1 + 136);
  *(v1 + 136) = 0x8000000000000000;
  sub_1C213CAAC(v8, v11, v10, isUniquelyReferenced_nonNull_native);

  *(v1 + 136) = v18;
  swift_endAccess();
LABEL_6:
  v0[11] = v8;
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_1C21655BC;

  return sub_1C2165CD4();
}

uint64_t sub_1C21655BC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C21656CC, v2, 0);
}

uint64_t sub_1C21656CC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C21658B8(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_1C2170914();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C216598C;

  return sub_1C21653D4(v4, v6);
}

uint64_t sub_1C216598C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

void ASProgressiveBackoffManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ASProgressiveBackoffManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t ASProgressiveBackoffManager.deinit()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ASProgressiveBackoffManager.__deallocating_deinit()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C2165C08()
{
  v2 = v1[20];
  v3 = v1[16];
  if (v3 >= v2)
  {
    return 0;
  }

  v5 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v1[19] >= v7)
  {
    v0 = v7;
  }

  else
  {
    v0 = v1[19];
  }

  if (v0 - 65 < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if ((v0 & 0x8000000000000000) != 0)
  {
LABEL_18:
    v8 = 0;
    result = 0;
    if (v0 <= 0xFFFFFFFFFFFFFFC0)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v0 >= 0x40)
  {
    return 0;
  }

  v8 = 1 << v0;
LABEL_13:
  v9 = 3600;
  if (v8 < 3600)
  {
    v9 = v8;
  }

  return 1000000000000000000 * v9;
}

uint64_t sub_1C2165CD4()
{
  v1[2] = v0;
  v2 = sub_1C2171014();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2165D94, v0, 0);
}

uint64_t sub_1C2165D94()
{
  v1 = v0[2];
  result = sub_1C2165C08();
  v5 = *(v1 + 160);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 160) = v7;
    if (v4)
    {
      v8 = v0[5];
      v9 = v0[2];
      sub_1C21661F4();

      v10 = v0[1];

      return v10();
    }

    else
    {
      v11 = v0[5];
      v12 = result;
      v13 = v3;
      sub_1C21713A4();
      v14 = swift_task_alloc();
      v0[6] = v14;
      *v14 = v0;
      v14[1] = sub_1C2165ECC;
      v15 = v0[5];

      return sub_1C2167044(v12, v13, 0, 0, 1);
    }
  }

  return result;
}

uint64_t sub_1C2165ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 56) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1C21660C0;
  }

  else
  {
    v9 = sub_1C2166054;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1C2166054()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_1C21661F4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C21660C0()
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v1 = sub_1C21705A4();
  __swift_project_value_buffer(v1, qword_1EDD4CB08);
  v2 = sub_1C2170584();
  v3 = sub_1C2170C74();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C20AD000, v2, v3, "Task canceled before backoff timer finished.", v6, 2u);
    MEMORY[0x1C6915360](v6, -1, -1);
  }

  v7 = v0[5];
  v8 = v0[2];
  sub_1C21661F4();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1C21661F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  if (v0[21])
  {
    v5 = v0[21];

    sub_1C2170BF4();
  }

  v6 = sub_1C2165C08();
  if (v8)
  {
    v9 = v0[17];
    v10 = v0[18];
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v9 = v0[17];
    v10 = v0[18];
    if (sub_1C21714A4())
    {
      v9 = v11;
      v10 = v12;
    }
  }

  v13 = sub_1C2170BE4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v15 = sub_1C2167754(&qword_1EDD4B770, v14, type metadata accessor for ASProgressiveBackoffManager.Context);
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v15;
  v16[4] = v0;
  v16[5] = v9;
  v16[6] = v10;
  swift_retain_n();
  v17 = sub_1C211E0FC(0, 0, v4, &unk_1C2181398, v16);
  v18 = v0[21];
  v0[21] = v17;
}

uint64_t sub_1C21663C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1C2171014();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C216648C, a4, 0);
}

uint64_t sub_1C216648C()
{
  v20 = v0;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1C21705A4();
  v0[8] = __swift_project_value_buffer(v2, qword_1EDD4CB08);

  v3 = sub_1C2170584();
  v4 = sub_1C2170C34();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1C20D7F2C(*(v7 + 112), *(v7 + 120), &v19);
    *(v8 + 12) = 2080;
    v10 = sub_1C2171494();
    v12 = sub_1C20D7F2C(v10, v11, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1C20AD000, v3, v4, "Scheduling %{public}s cooldown for %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v9, -1, -1);
    MEMORY[0x1C6915360](v8, -1, -1);
  }

  v13 = v0[7];
  sub_1C21713A4();
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_1C21666BC;
  v15 = v0[7];
  v17 = v0[3];
  v16 = v0[4];

  return sub_1C2167044(v17, v16, 0, 0, 1);
}

uint64_t sub_1C21666BC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1C21669DC;
  }

  else
  {
    v9 = sub_1C2166844;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1C2166844()
{
  v19 = v0;
  v1 = v0[8];
  v2 = v0[2];

  v3 = sub_1C2170584();
  v4 = sub_1C2170C34();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1C20D7F2C(*(v7 + 112), *(v7 + 120), &v18);
    *(v8 + 12) = 2080;
    v10 = sub_1C2171494();
    v12 = sub_1C20D7F2C(v10, v11, &v18);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1C20AD000, v3, v4, "Cooldown %{public}s for %s completed.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v9, -1, -1);
    MEMORY[0x1C6915360](v8, -1, -1);
  }

  v13 = v0[2];
  v14 = *(v13 + 168);
  *(v13 + 160) = 0;
  *(v13 + 168) = 0;

  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1C21669DC()
{
  v19 = v0;
  v1 = v0[8];
  v2 = v0[2];

  v3 = sub_1C2170584();
  v4 = sub_1C2170C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1C20D7F2C(*(v9 + 112), *(v9 + 120), &v18);
    *(v10 + 12) = 2080;
    v12 = sub_1C2171494();
    v14 = sub_1C20D7F2C(v12, v13, &v18);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1C20AD000, v3, v4, "Cooldown %{public}s for %s aborted.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v11, -1, -1);
    MEMORY[0x1C6915360](v10, -1, -1);
  }

  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1C2166B78()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 168);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C2166BB8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C20DBF8C;

  return v7();
}

uint64_t sub_1C2166CA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C20DBD8C;

  return v8();
}

uint64_t sub_1C2166D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1C2167850(a3, v25 - v11);
  v13 = sub_1C2170BE4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C21678C0(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C2170BD4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1C2170BA4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1C2170994() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1C21678C0(a3);

    return v23;
  }

LABEL_8:
  sub_1C21678C0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C2167044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C2171004();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C2167144, 0, 0);
}

uint64_t sub_1C2167144()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1C2171014();
  v7 = sub_1C2167754(&qword_1EDD4B778, 255, MEMORY[0x1E69E8820]);
  sub_1C2171384();
  sub_1C2167754(&unk_1EDD4B780, 255, MEMORY[0x1E69E87E8]);
  sub_1C2171024();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1C21672DC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1C21672DC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C2167498, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1C2167498()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t dispatch thunk of ASProgressiveBackoffManager.performAfterBackoff(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C20DBD8C;

  return v10(a1, a2);
}

uint64_t sub_1C216768C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C20DBF8C;

  return sub_1C21663C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C2167754(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C216779C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C20DBF8C;

  return sub_1C21658B8(v2, v3, v4);
}

uint64_t sub_1C2167850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C21678C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2167928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C20DBF8C;

  return sub_1C2122A0C(a1, v5);
}

uint64_t sub_1C21679E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C20DBD8C;

  return sub_1C2122A0C(a1, v5);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.init(secret1:secret2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C2170764();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0) + 20);

  return sub_1C210B21C(a2, v7);
}

id ASCPublicKeyCredentialAssertionExtensionOutputs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

__n128 ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.init(result:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1C2167BA4(void *a1)
{
  v2 = sub_1C216FD44();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  sub_1C2167FA4(&unk_1EBF25248, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs);
  v5 = sub_1C216FD24();
  v7 = v6;

  v8 = sub_1C2170154();
  v9 = sub_1C21708F4();
  [a1 encodeObject:v8 forKey:v9];

  return sub_1C20D3174(v5, v7);
}

id ASCPublicKeyCredentialAssertionExtensionOutputs.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_1C20D36A0();
  v4 = sub_1C2170CC4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C2170174();
    v8 = v7;

    v9 = sub_1C216FCE4();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C2167FA4(&qword_1EBF25258, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs);
    sub_1C216FCC4();

    v14 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0));
    v15 = sub_1C216B5E4(v19);

    sub_1C20D3174(v6, v8);
    swift_getObjectType();
    v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v15;
  }

  else
  {

    swift_getObjectType();
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1C2167FA4(unint64_t *a1, void (*a2)(uint64_t))
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

id ASCPublicKeyCredentialAssertionExtensionOutputs.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = -1;
  v2 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v3 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C21681C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0x6F69736E65747845;
  v34 = 0xEF0A207B203A736ELL;
  v15 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v16 = *(v15 + 16);
  if (v16 != 255)
  {
    v26 = v10;
    v17 = *(v15 + 8);
    v30 = *v15;
    v18 = v30;
    v31 = v17;
    v32 = v16 & 1;
    sub_1C216B884(v30, v17, v16 & 1);
    v19 = ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.description.getter();
    v27 = v5;
    v28 = 9;
    v29 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v19);

    v30 = v28;
    v31 = v29;

    MEMORY[0x1C6913CB0](10, 0xE100000000000000);

    MEMORY[0x1C6913CB0](v30, v31);
    v5 = v27;

    v20 = v17;
    v10 = v26;
    sub_1C2142F40(v18, v20, v16);
  }

  v21 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v21, v9, &qword_1EBF24840, &qword_1C217E130);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C20EB498(v9, &qword_1EBF24840, &qword_1C217E130);
  }

  else
  {
    sub_1C216B7C4(v9, v14);
    v28 = 0;
    v29 = 0xE000000000000000;
    MEMORY[0x1C6913CB0](0x203A465250, 0xE500000000000000);
    sub_1C2170764();
    sub_1C2171034();
    MEMORY[0x1C6913CB0](32, 0xE100000000000000);
    sub_1C20EB3E8(&v14[*(v10 + 20)], v5, &qword_1EBF23BF0, &unk_1C21813F0);
    v22 = sub_1C2170974();
    MEMORY[0x1C6913CB0](v22);

    v23 = v28;
    v24 = v29;
    v28 = 9;
    v29 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v23, v24);

    MEMORY[0x1C6913CB0](10, 0xE100000000000000);

    MEMORY[0x1C6913CB0](v28, v29);

    sub_1C216B828(v14);
  }

  v28 = v33;
  v29 = v34;

  MEMORY[0x1C6913CB0](125, 0xE100000000000000);

  return v28;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    sub_1C2170F34();

    v8 = 0xD000000000000011;
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x1C6913CB0](v2, v3);

    return v8;
  }

  v4 = *(v0 + 8);
  if (v4 >> 60 == 15)
  {
    return 0xD000000000000013;
  }

  sub_1C20D865C(v1, v4);
  sub_1C20D865C(v1, v4);
  sub_1C2170F34();

  v8 = 0xD000000000000010;
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v6)
  {
    goto LABEL_19;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_19:
    v7 = sub_1C21712E4();
    MEMORY[0x1C6913CB0](v7);

    MEMORY[0x1C6913CB0](0x736574796220, 0xE600000000000000);
    sub_1C2142F58(v1, v4, 0);
    sub_1C2142F58(v1, v4, 0);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - v3;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  MEMORY[0x1C6913CB0](0x203A465250, 0xE500000000000000);
  sub_1C2170764();
  sub_1C2171034();
  MEMORY[0x1C6913CB0](32, 0xE100000000000000);
  v5 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  sub_1C20EB3E8(v0 + *(v5 + 20), v4, &qword_1EBF23BF0, &unk_1C21813F0);
  v6 = sub_1C2170974();
  MEMORY[0x1C6913CB0](v6);

  return v8[0];
}

uint64_t sub_1C21688CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_1C216B890(v4, v5, v6);
}

uint64_t sub_1C216892C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  sub_1C216B890(v2, v3, v5);
  return sub_1C2142F40(v6, v7, v8);
}

uint64_t sub_1C21689C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_1C216B890(v4, v5, v6);
}

uint64_t sub_1C2168A20(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  v8 = *(v5 + 16);
  *(v5 + 16) = v4;
  return sub_1C2142F40(v6, v7, v8);
}

uint64_t sub_1C2168AF0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C20EB3E8(a1, &v11 - v6, &qword_1EBF24840, &qword_1C217E130);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C216B8A8(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1C2168BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  return sub_1C20EB3E8(v1 + v3, a1, &qword_1EBF24840, &qword_1C217E130);
}

uint64_t sub_1C2168C30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C216B8A8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C2168CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v40[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40[-v8];
  v10 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v16 = *(v15 + 16);
  *&v46 = v10;
  if (v16 == 255)
  {
    v44 = 0;
    v45 = 0;
    v19 = 0;
    v43 = 0;
    v20 = 0;
    v21 = 3;
    goto LABEL_11;
  }

  v18 = *v15;
  v17 = *(v15 + 8);
  if ((v16 & 1) == 0)
  {
    v22 = v17 >> 60;
    if (v17 >> 60 == 15)
    {
      v23 = 0;
      v44 = *(v15 + 8);
      v45 = v18;
LABEL_7:
      v43 = v23;
      v20 = v22 > 0xE;
      v21 = 2;
      v19 = 2;
      goto LABEL_11;
    }

    *&v41 = v17 >> 60;
    sub_1C216B884(v18, v17, 0);
    v24 = sub_1C2170044();
    v43 = 0;
    v44 = v25;
    v45 = v24;
    v26 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v26 != 2)
      {
LABEL_26:
        sub_1C2142F40(v18, v17, v16);
        v23 = 0;
        goto LABEL_27;
      }

      v39 = *(v18 + 16);
      v38 = *(v18 + 24);
      sub_1C2142F40(v18, v17, v16);
      v23 = v38 - v39;
      if (!__OFSUB__(v38, v39))
      {
LABEL_24:
        v22 = v41;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v26)
    {
      sub_1C2142F40(v18, v17, v16);
      v23 = BYTE6(v17);
LABEL_27:
      v22 = v41;
      goto LABEL_7;
    }

    result = sub_1C2142F40(v18, v17, v16);
    LODWORD(v23) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
      return result;
    }

    v23 = v23;
    goto LABEL_24;
  }

  sub_1C2142F40(*v15, *(v15 + 8), v16);
  v43 = 0;
  v19 = v18 & 1;
  v20 = 1;
  v44 = 0xF000000000000000;
  v45 = 0;
  v21 = 2;
LABEL_11:
  v27 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v27, v9, &qword_1EBF24840, &qword_1C217E130);
  v28 = v46;
  if ((*(v11 + 48))(v9, 1, v46) == 1)
  {
    result = sub_1C20EB498(v9, &qword_1EBF24840, &qword_1C217E130);
    v30 = 0uLL;
    v31 = 3;
    v32 = 0uLL;
    v34 = v44;
    v33 = v45;
  }

  else
  {
    sub_1C216B7C4(v9, v14);
    sub_1C2170734();
    v41 = v47;
    v35 = v42;
    sub_1C20EB3E8(&v14[*(v28 + 20)], v42, &qword_1EBF23BF0, &unk_1C21813F0);
    v36 = sub_1C2170764();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_1C216B828(v14);
      result = sub_1C20EB498(v35, &qword_1EBF23BF0, &unk_1C21813F0);
      v32 = xmmword_1C21769B0;
    }

    else
    {
      sub_1C2170734();
      sub_1C216B828(v14);
      v46 = v47;
      result = (*(v37 + 8))(v35, v36);
      v32 = v46;
    }

    v31 = 2;
    v34 = v44;
    v33 = v45;
    v30 = v41;
  }

  *a1 = v21;
  *(a1 + 8) = v33;
  *(a1 + 16) = v34;
  *(a1 + 24) = v19;
  *(a1 + 32) = v43;
  *(a1 + 40) = v20;
  *(a1 + 48) = v31;
  *(a1 + 56) = v30;
  *(a1 + 72) = v32;
  *(a1 + 88) = 2;
  return result;
}

uint64_t sub_1C21693A0(uint64_t a1)
{
  v2 = sub_1C216B918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21693DC(uint64_t a1)
{
  v2 = sub_1C216B918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2169428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C21694B0(uint64_t a1)
{
  v2 = sub_1C216B9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21694EC(uint64_t a1)
{
  v2 = sub_1C216B9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2169540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C21695C8(uint64_t a1)
{
  v2 = sub_1C216B96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2169604(uint64_t a1)
{
  v2 = sub_1C216B96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25270, &qword_1C2181400);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25278, &qword_1C2181408);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25280, &qword_1C2181410);
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v22 - v13;
  v15 = v1[1];
  v28 = *v1;
  v23 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216B918();
  sub_1C2171484();
  if (v16 == 1)
  {
    LOBYTE(v30) = 1;
    sub_1C216B96C();
    v18 = v29;
    sub_1C2171214();
    v19 = v27;
    sub_1C2171284();
    (*(v26 + 8))(v6, v19);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1C216B9C0();
    v18 = v29;
    sub_1C2171214();
    v30 = v28;
    v31 = v23;
    sub_1C20D8CEC();
    v20 = v25;
    sub_1C2171264();
    (*(v24 + 8))(v10, v20);
  }

  return (*(v11 + 8))(v14, v18);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252A8, &qword_1C2181418);
  v36 = *(v38 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v33[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252B0, &qword_1C2181420);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252B8, &unk_1C2181428);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33[-v13];
  v15 = a1[3];
  v16 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1C216B918();
  v17 = v40;
  sub_1C2171464();
  if (!v17)
  {
    v35 = v6;
    v40 = v11;
    v19 = v38;
    v18 = v39;
    v20 = sub_1C2171204();
    v21 = (2 * *(v20 + 16)) | 1;
    v43 = v20;
    v44 = v20 + 32;
    v45 = 0;
    v46 = v21;
    v22 = sub_1C20DA3C4();
    if (v22 == 2 || v45 != v46 >> 1)
    {
      v26 = sub_1C2170F74();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B0, &qword_1C2175AA0) + 48);
      *v28 = &type metadata for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult;
      sub_1C2171154();
      sub_1C2170F64();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v40 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v22;
      if (v22)
      {
        LOBYTE(v41) = 1;
        sub_1C216B96C();
        sub_1C2171144();
        v23 = sub_1C21711C4();
        (*(v36 + 8))(v5, v19);
        (*(v40 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v24 = 0;
        v25 = v23 & 1;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_1C216B9C0();
        sub_1C2171144();
        sub_1C20D8E24();
        v31 = v35;
        sub_1C21711A4();
        v32 = v40;
        (*(v37 + 8))(v9, v31);
        (*(v32 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v25 = v41;
        v24 = v42;
      }

      *v18 = v25;
      *(v18 + 8) = v24;
      *(v18 + 16) = v34 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C216B884(v2, v3, v4);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1C2142F58(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_1C2169F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C2169F94(uint64_t a1)
{
  v2 = sub_1C216BA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2169FD0(uint64_t a1)
{
  v2 = sub_1C216BA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252C0, &qword_1C2181438);
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216B884(v7, v8, v9);
  sub_1C216BA14();
  sub_1C2171484();
  v14 = v7;
  v15 = v8;
  v16 = v9;
  sub_1C216BA68();
  v11 = v13;
  sub_1C2171294();
  sub_1C2142F58(v14, v15, v16);
  return (*(v3 + 8))(v6, v11);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252D8, &qword_1C2181440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BA14();
  sub_1C2171464();
  if (!v2)
  {
    sub_1C216BABC();
    sub_1C21711D4();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C216A330()
{
  if (*v0)
  {
    return 0x32746572636573;
  }

  else
  {
    return 0x31746572636573;
  }
}

uint64_t sub_1C216A364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x31746572636573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x32746572636573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C216A440(uint64_t a1)
{
  v2 = sub_1C216BB10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C216A47C(uint64_t a1)
{
  v2 = sub_1C216BB10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.secret1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2170764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_1C2170764();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252E8, &qword_1C2181448);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BB10();
  v16 = v34;
  sub_1C2171464();
  if (v16)
  {
    v19 = a1;
  }

  else
  {
    v34 = a1;
    v30 = v7;
    v37 = 0;
    sub_1C20D8E24();
    sub_1C21711D4();
    v17 = v35;
    v29 = v36;
    v37 = 1;
    sub_1C21711A4();
    v18 = v33;
    v22 = v35;
    v21 = v36;
    v35 = v17;
    v36 = v29;
    sub_1C20D865C(v17, v29);
    sub_1C2170744();
    if (v21 >> 60 == 15)
    {
      sub_1C20D3174(v17, v29);
      (*(v18 + 8))(v14, v11);
      v23 = 1;
      v24 = v31;
      v25 = v6;
    }

    else
    {
      v35 = v22;
      v36 = v21;
      v25 = v6;
      sub_1C2170744();
      sub_1C20D3174(v17, v29);
      (*(v18 + 8))(v14, v11);
      v23 = 0;
      v24 = v31;
    }

    v26 = v30;
    v27 = v32;
    (*(v32 + 56))(v25, v23, 1, v30);
    (*(v27 + 32))(v24, v10, v26);
    v28 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C210B21C(v25, v24 + *(v28 + 20));
    v19 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252F8, &qword_1C2181450);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BB10();
  sub_1C2171484();
  sub_1C2170734();
  v22 = 0;
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v21, *(&v21 + 1));
  if (!v2)
  {
    v15 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C20EB3E8(v3 + *(v15 + 20), v8, &qword_1EBF23BF0, &unk_1C21813F0);
    v16 = sub_1C2170764();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {
      sub_1C20EB498(v8, &qword_1EBF23BF0, &unk_1C21813F0);
      v18 = xmmword_1C21769B0;
    }

    else
    {
      sub_1C2170734();
      v20 = v21;
      (*(v17 + 8))(v8, v16);
      v18 = v20;
    }

    v21 = v18;
    v22 = 1;
    sub_1C2171264();
    sub_1C20B23C8(v21, *(&v21 + 1));
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C216AC98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  MEMORY[0x1C6913CB0](0x203A465250, 0xE500000000000000);
  sub_1C2170764();
  sub_1C2171034();
  MEMORY[0x1C6913CB0](32, 0xE100000000000000);
  sub_1C20EB3E8(v1 + *(a1 + 20), v6, &qword_1EBF23BF0, &unk_1C21813F0);
  v7 = sub_1C2170974();
  MEMORY[0x1C6913CB0](v7);

  return v9[0];
}

uint64_t sub_1C216ADC4(uint64_t a1)
{
  v2 = sub_1C216BB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C216AE00(uint64_t a1)
{
  v2 = sub_1C216BB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPublicKeyCredentialAssertionExtensionOutputs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C216AECC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25300, &qword_1C2181458);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BB64();
  sub_1C2171484();
  v15 = v3 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v20 = *v15;
  v21 = v16;
  v22 = v17;
  v23 = 0;
  sub_1C216B890(v20, v16, v17);
  sub_1C216BBB8();
  sub_1C2171264();
  sub_1C2142F40(v20, v21, v22);
  if (!v2)
  {
    v18 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
    swift_beginAccess();
    sub_1C20EB3E8(v3 + v18, v8, &qword_1EBF24840, &qword_1C217E130);
    v23 = 1;
    type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C2167FA4(&qword_1EBF25318, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF);
    sub_1C2171264();
    sub_1C20EB498(v8, &qword_1EBF24840, &qword_1C217E130);
  }

  return (*(v10 + 8))(v13, v9);
}

char *ASCPublicKeyCredentialAssertionExtensionOutputs.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25320, &qword_1C2181460);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -1;
  v13 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v14 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  v15 = *(*(v14 - 8) + 56);
  v40 = v13;
  v15(&v2[v13], 1, 1, v14);
  v17 = a1[3];
  v16 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1C216BB64();
  v18 = v33;
  sub_1C2171464();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    sub_1C2142F40(*v12, *(v12 + 1), v12[16]);
    sub_1C20EB498(&v2[v40], &qword_1EBF24840, &qword_1C217E130);
    type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
    v26 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v27 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = 0;
    sub_1C216BC0C();
    sub_1C21711A4();
    v19 = v36;
    v20 = v37;
    v21 = v38;
    swift_beginAccess();
    v22 = *v12;
    v23 = *(v12 + 1);
    *v12 = v19;
    *(v12 + 1) = v20;
    v24 = v32;
    v25 = v12[16];
    v12[16] = v21;
    sub_1C2142F40(v22, v23, v25);
    LOBYTE(v36) = 1;
    sub_1C2167FA4(&unk_1EBF25330, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF);
    sub_1C21711A4();
    v29 = v40;
    swift_beginAccess();
    sub_1C216B8A8(v7, &v2[v29]);
    swift_endAccess();
    v30 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
    v35.receiver = v2;
    v35.super_class = v30;
    v2 = objc_msgSendSuper2(&v35, sel_init);
    (*(v31 + 8))(v11, v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return v2;
}

char *sub_1C216B568@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0));
  result = ASCPublicKeyCredentialAssertionExtensionOutputs.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C216B5E4(uint64_t a1)
{
  v2 = a1;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = -1;
  v8 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v9 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v2 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v10) = *(v10 + 16);
  swift_beginAccess();
  v14 = *v7;
  v13 = *(v7 + 1);
  *v7 = v11;
  *(v7 + 1) = v12;
  LOBYTE(v2) = v7[16];
  v7[16] = v10;
  sub_1C216B890(v11, v12, v10);
  sub_1C2142F40(v14, v13, v2);
  v15 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v16 = v20;
  swift_beginAccess();
  sub_1C20EB3E8(v16 + v15, v6, &qword_1EBF24840, &qword_1C217E130);
  swift_beginAccess();
  sub_1C216B8A8(v6, &v1[v8]);
  swift_endAccess();
  v17 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  v21.receiver = v1;
  v21.super_class = v17;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_1C216B7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C216B828(uint64_t a1)
{
  v2 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C216B884(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1C20B22B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1C216B890(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C216B884(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C216B8A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C216B918()
{
  result = qword_1EBF25288;
  if (!qword_1EBF25288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25288);
  }

  return result;
}

unint64_t sub_1C216B96C()
{
  result = qword_1EBF25290;
  if (!qword_1EBF25290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25290);
  }

  return result;
}

unint64_t sub_1C216B9C0()
{
  result = qword_1EBF25298;
  if (!qword_1EBF25298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25298);
  }

  return result;
}

unint64_t sub_1C216BA14()
{
  result = qword_1EBF252C8;
  if (!qword_1EBF252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252C8);
  }

  return result;
}

unint64_t sub_1C216BA68()
{
  result = qword_1EBF252D0;
  if (!qword_1EBF252D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252D0);
  }

  return result;
}

unint64_t sub_1C216BABC()
{
  result = qword_1EBF252E0;
  if (!qword_1EBF252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252E0);
  }

  return result;
}

unint64_t sub_1C216BB10()
{
  result = qword_1EBF252F0;
  if (!qword_1EBF252F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252F0);
  }

  return result;
}

unint64_t sub_1C216BB64()
{
  result = qword_1EBF25308;
  if (!qword_1EBF25308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25308);
  }

  return result;
}

unint64_t sub_1C216BBB8()
{
  result = qword_1EBF25310;
  if (!qword_1EBF25310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25310);
  }

  return result;
}

unint64_t sub_1C216BC0C()
{
  result = qword_1EBF25328;
  if (!qword_1EBF25328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25328);
  }

  return result;
}

void sub_1C216BC68()
{
  sub_1C216C0C8(319, &unk_1EBF25350, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C216BF58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C216BFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1C216C028()
{
  sub_1C2170764();
  if (v0 <= 0x3F)
  {
    sub_1C216C0C8(319, &qword_1EBF23C90, MEMORY[0x1E6966458]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C216C0C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2170D24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C216C180()
{
  result = qword_1EBF25370;
  if (!qword_1EBF25370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25370);
  }

  return result;
}

unint64_t sub_1C216C1D8()
{
  result = qword_1EBF25378;
  if (!qword_1EBF25378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25378);
  }

  return result;
}

unint64_t sub_1C216C230()
{
  result = qword_1EBF25380;
  if (!qword_1EBF25380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25380);
  }

  return result;
}

unint64_t sub_1C216C288()
{
  result = qword_1EBF25388;
  if (!qword_1EBF25388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25388);
  }

  return result;
}

unint64_t sub_1C216C2E0()
{
  result = qword_1EBF25390;
  if (!qword_1EBF25390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25390);
  }

  return result;
}

unint64_t sub_1C216C338()
{
  result = qword_1EBF25398;
  if (!qword_1EBF25398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25398);
  }

  return result;
}

unint64_t sub_1C216C390()
{
  result = qword_1EBF253A0;
  if (!qword_1EBF253A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253A0);
  }

  return result;
}

unint64_t sub_1C216C3E8()
{
  result = qword_1EBF253A8;
  if (!qword_1EBF253A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253A8);
  }

  return result;
}

unint64_t sub_1C216C440()
{
  result = qword_1EBF253B0;
  if (!qword_1EBF253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253B0);
  }

  return result;
}

unint64_t sub_1C216C498()
{
  result = qword_1EBF253B8;
  if (!qword_1EBF253B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253B8);
  }

  return result;
}

unint64_t sub_1C216C4F0()
{
  result = qword_1EBF253C0;
  if (!qword_1EBF253C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253C0);
  }

  return result;
}

unint64_t sub_1C216C548()
{
  result = qword_1EBF253C8;
  if (!qword_1EBF253C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253C8);
  }

  return result;
}

unint64_t sub_1C216C5A0()
{
  result = qword_1EBF253D0;
  if (!qword_1EBF253D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253D0);
  }

  return result;
}

unint64_t sub_1C216C5F8()
{
  result = qword_1EBF253D8;
  if (!qword_1EBF253D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253D8);
  }

  return result;
}

unint64_t sub_1C216C650()
{
  result = qword_1EBF253E0;
  if (!qword_1EBF253E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253E0);
  }

  return result;
}

unint64_t sub_1C216C6A8()
{
  result = qword_1EBF253E8;
  if (!qword_1EBF253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253E8);
  }

  return result;
}

unint64_t sub_1C216C700()
{
  result = qword_1EBF253F0;
  if (!qword_1EBF253F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253F0);
  }

  return result;
}

unint64_t sub_1C216C758()
{
  result = qword_1EBF253F8;
  if (!qword_1EBF253F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253F8);
  }

  return result;
}

Swift::String __swiftcall Optional.loggerDescription(defaultValue:)(Swift::String defaultValue)
{
  object = defaultValue._object;
  countAndFlagsBits = defaultValue._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](defaultValue._countAndFlagsBits);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - v11;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
  }

  else
  {
    (*(v5 + 32))(v12, v16, v4);
    (*(v5 + 16))(v9, v12, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      v19 = v26;
      swift_getErrorValue();
      countAndFlagsBits = sub_1C21713D4();
      object = v20;
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1C21712F4();
      countAndFlagsBits = v26;
      object = v27;
    }

    v21 = *(v5 + 8);
    v21(v12, v4);
    v21(v9, v4);
  }

  v22 = countAndFlagsBits;
  v23 = object;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

Swift::String __swiftcall SymmetricKey.hexString()()
{
  sub_1C2170734();
  v0 = sub_1C2170084();
  v2 = v1;
  sub_1C20D3174(v6, v7);
  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1C216CB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C213F048(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C213F108(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C213F184(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t UnsignedInteger<>.init<A>(littleEndianSequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v43 = a6;
  v44 = a4;
  v40 = a1;
  v9 = *(a2 - 8);
  v37 = a5;
  v38 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - v15;
  v39 = *(v17 - 8);
  v18 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v20 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v33 - v21;
  v42 = *(*(a4 + 1) + 24);
  v23 = *(v42 + 16);
  v24 = swift_getAssociatedTypeWitness();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  swift_getAssociatedConformanceWitness();
  sub_1C2171354();
  sub_1C2171304();
  v41 = sub_1C2171064();
  (*(v39 + 16))(v35, v40, a3);
  v44 = v22;
  sub_1C2170AD4();
  v37 = a3;
  v26 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v27 = 0;
  v28 = (v38 + 8);
  while (1)
  {
    sub_1C2170D74();
    if (v48)
    {
LABEL_5:
      (*(v39 + 8))(v40, v37);
      return (*(v34 + 8))(v44, v26);
    }

    v46 = v47;
    sub_1C216D008();
    sub_1C2170E14();
    v45 = v27;
    sub_1C216D05C();
    sub_1C2170DC4();
    v29 = *v28;
    (*v28)(v13, a2);
    v30 = *(v42 + 8);
    sub_1C21710C4();
    result = (v29)(v16, a2);
    v32 = v27 + 8;
    if (__OFADD__(v27, 8))
    {
      break;
    }

    v27 += 8;
    if (v32 >= v41)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C216D008()
{
  result = qword_1EBF25400;
  if (!qword_1EBF25400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25400);
  }

  return result;
}

unint64_t sub_1C216D05C()
{
  result = qword_1EBF25408;
  if (!qword_1EBF25408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25408);
  }

  return result;
}

uint64_t UnsignedInteger<>.littleEndianData(preservingWidth:)(int a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v58[1] = a3;
  v4 = *(a3 + 8);
  v5 = *(*(v4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = v58 - v9;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v67 = v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v71 = xmmword_1C2176980;
  v20 = *(v10 + 16);
  v68 = v58 - v21;
  v60 = v20;
  v20();
  v63 = v5;
  v22 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = v10 + 16;
  v62 = v14;
  v24 = (v10 + 8);
  v64 = v22;
  v66 = AssociatedConformanceWitness;
  do
  {
    while (1)
    {
      sub_1C2171354();
      sub_1C2171304();
      v26 = v67;
      sub_1C2170DB4();
      v27 = *v24;
      (*v24)(v17, a2);
      if (sub_1C2170E04())
      {
        sub_1C2171354();
        sub_1C2171304();
        v28 = *(*(v4 + 32) + 8);
        v29 = sub_1C21708D4();
        v27(v17, a2);
        if ((v29 & 1) == 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v30 = sub_1C2170DF4();
      v31 = v62;
      v32 = v26;
      if (v30 > 7)
      {
        LOBYTE(v70[0]) = -1;
        v33 = sub_1C2170E04();
        v34 = sub_1C2170DF4();
        if ((v33 & 1) == 0)
        {
          if (v34 < 9)
          {
            v32 = v67;
LABEL_14:
            sub_1C2170DE4();
            goto LABEL_15;
          }

LABEL_11:
          sub_1C216D008();
          sub_1C2170DA4();
          v37 = *(*(v4 + 32) + 8);
          v32 = v67;
          v38 = sub_1C21708C4();
          v27(v17, a2);
          if (v38)
          {
            goto LABEL_41;
          }

          goto LABEL_15;
        }

        if (v34 > 8)
        {
          goto LABEL_11;
        }

        sub_1C2171354();
        sub_1C2171304();
        v35 = *(*(v4 + 32) + 8);
        v32 = v67;
        v36 = sub_1C21708B4();
        v27(v17, a2);
        if (v36)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      v39 = sub_1C2170DE4();
      v27(v32, a2);
      if (*(&v71 + 1) >> 62 == 2)
      {
        v40 = *(v71 + 24);
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
      v70[3] = v41;
      v70[4] = sub_1C216D830();
      LOBYTE(v70[0]) = v39;
      v69 = *__swift_project_boxed_opaque_existential_1(v70, v41);
      sub_1C2170104();
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      v70[0] = 8;
      sub_1C216D05C();
      v42 = v68;
      sub_1C2170DD4();
      (v60)(v31, v42, a2);
      LOBYTE(v42) = sub_1C2170E04();
      v43 = sub_1C2170DF4();
      if (v42)
      {
        break;
      }

      if (v43 > 63)
      {
        goto LABEL_21;
      }

LABEL_2:
      v25 = sub_1C2170DE4();
      v27(v31, a2);
      if (v25 <= 0)
      {
        goto LABEL_22;
      }
    }

    if (v43 <= 64)
    {
      goto LABEL_2;
    }

LABEL_21:
    v70[0] = 0;
    sub_1C2170DA4();
    v44 = *(*(v4 + 32) + 8);
    v45 = sub_1C21708C4();
    v27(v17, a2);
    v27(v31, a2);
  }

  while ((v45 & 1) != 0);
LABEL_22:
  if ((v59 & 1) == 0)
  {
LABEL_38:
    v27(v68, a2);
    goto LABEL_39;
  }

  v46 = sub_1C2171064();
  v47 = v46 / 8;
  if (v46 >= 0 && (v46 & 0x8000000000000007) != 0)
  {
    ++v47;
  }

  v48 = v71;
  v49 = *(&v71 + 1) >> 62;
  if ((*(&v71 + 1) >> 62) <= 1)
  {
    if (!v49)
    {
      v48 = BYTE14(v71);
      goto LABEL_35;
    }

LABEL_32:
    v52 = __OFSUB__(HIDWORD(v48), v48);
    LODWORD(v48) = HIDWORD(v48) - v48;
    if (!v52)
    {
      v48 = v48;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
  }

  if (v49 == 2)
  {
    v50 = *(v71 + 16);
    v51 = *(v71 + 24);
    v52 = __OFSUB__(v51, v50);
    v48 = v51 - v50;
    if (v52)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    v48 = 0;
  }

LABEL_35:
  v53 = v47 - v48;
  if (__OFSUB__(v47, v48))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v53 < 1)
  {
    goto LABEL_38;
  }

  v54 = sub_1C2170B84();
  *(v54 + 16) = v53;
  bzero((v54 + 32), v53);
  sub_1C2170114();
  v27(v68, a2);

LABEL_39:
  v55 = v71;
  sub_1C20D865C(v71, *(&v71 + 1));
  sub_1C20D3174(v55, *(&v55 + 1));
  v56 = *MEMORY[0x1E69E9840];
  return v55;
}

unint64_t sub_1C216D830()
{
  result = qword_1EBF24868;
  if (!qword_1EBF24868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF24860, &qword_1C217E150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24868);
  }

  return result;
}

void isClientWithAuditTokenProperlyEntitled_cold_1(_OWORD *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a2;
  v4 = WBSApplicationIdentifierFromAuditToken();
  LODWORD(v6[0]) = 138543362;
  *(v6 + 4) = v4;
  _os_log_fault_impl(&dword_1C20AD000, v3, OS_LOG_TYPE_FAULT, "Rejecting connection from unentitled process %{public}@.", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __getWBUFeatureManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBUFeatureManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ASFeatureManager.m" lineNumber:29 description:{@"Unable to find class %s", "WBUFeatureManager"}];

  __break(1u);
}

void __getWBUFeatureManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASFeatureManager.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
  sub_1C216FC54();
}