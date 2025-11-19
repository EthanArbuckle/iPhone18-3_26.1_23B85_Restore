uint64_t sub_1B71FD32C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = type metadata accessor for InternalAccount();
  v8 = MEMORY[0x1EEE9AC00](v62);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v54 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v54 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_66;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v20;
  v69 = a1;
  v68 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v24;
    if (v24 >= 1)
    {
      v35 = -v20;
      v36 = v34;
      v37 = v60;
      v57 = a4;
      v61 = v35;
      do
      {
        v55 = v34;
        v38 = a2;
        v39 = a2 + v35;
        v58 = v38;
        v59 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v69 = v38;
            v34 = v55;
            goto LABEL_63;
          }

          v41 = a3;
          v56 = v34;
          v42 = v36 + v35;
          sub_1B72053B0(v42, v37, type metadata accessor for InternalAccount);
          sub_1B72053B0(v39, v10, type metadata accessor for InternalAccount);
          v43 = *(v62 + 44);
          v44 = *(v37 + v43 + 8);
          v65 = *(v37 + v43);
          v66 = v44;
          v45 = &v10[v43];
          v47 = *v45;
          v46 = *(v45 + 1);
          v63 = v47;
          v64 = v46;
          sub_1B7205210();
          v48 = sub_1B7801808();
          if (v48)
          {
            v49 = v10;
            v50 = v48 == -1;
          }

          else
          {
            v51 = MEMORY[0x1B8CA3CE0](v37, v10);
            v49 = v10;
            v50 = v51;
          }

          a3 += v61;
          v10 = v49;
          sub_1B7205478(v49, type metadata accessor for InternalAccount);
          sub_1B7205478(v37, type metadata accessor for InternalAccount);
          if (v50)
          {
            break;
          }

          v34 = v42;
          v52 = v57;
          if (v41 < v36 || a3 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v42;
            v39 = v59;
            v37 = v60;
          }

          else
          {
            v39 = v59;
            v37 = v60;
            if (v41 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
              v34 = v42;
            }
          }

          v36 = v34;
          v40 = v42 > v52;
          v35 = v61;
          v38 = v58;
          if (!v40)
          {
            v69 = v58;
            goto LABEL_63;
          }
        }

        v53 = v57;
        if (v41 < v58 || a3 >= v58)
        {
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v35 = v61;
        }

        else
        {
          a2 = v59;
          v37 = v60;
          v35 = v61;
          if (v41 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v34 = v56;
      }

      while (v36 > v53);
    }

    v69 = a2;
LABEL_63:
    v67 = v34;
  }

  else
  {
    v61 = a3;
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v23;
    v67 = a4 + v23;
    if (v23 >= 1 && a2 < v61)
    {
      do
      {
        sub_1B72053B0(a2, v18, type metadata accessor for InternalAccount);
        sub_1B72053B0(a4, v15, type metadata accessor for InternalAccount);
        v27 = *(v62 + 44);
        v28 = *&v18[v27 + 8];
        v65 = *&v18[v27];
        v66 = v28;
        v29 = &v15[v27];
        v31 = *v29;
        v30 = *(v29 + 1);
        v63 = v31;
        v64 = v30;
        sub_1B7205210();
        v32 = sub_1B7801808();
        if (v32)
        {
          v33 = v32 == -1;
        }

        else
        {
          v33 = MEMORY[0x1B8CA3CE0](v18, v15);
        }

        sub_1B7205478(v15, type metadata accessor for InternalAccount);
        sub_1B7205478(v18, type metadata accessor for InternalAccount);
        if (v33)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v68 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v69 = a1;
      }

      while (a4 < v25 && a2 < v61);
    }
  }

  sub_1B778E55C(&v69, &v68, &v67);
  return 1;
}

size_t sub_1B71FD914(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F6A0, &unk_1B7809480, type metadata accessor for InternalAccount);
  *v3 = result;
  return result;
}

size_t sub_1B71FD958(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F2F8, &unk_1B780BFB0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1B71FD99C(void *a1, int64_t a2, char a3)
{
  result = sub_1B7200C90(a1, a2, a3, *v3, &qword_1EB98F678, &unk_1B7809458, &qword_1EB98F680);
  *v3 = result;
  return result;
}

size_t sub_1B71FD9DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F690, &unk_1B7809470, type metadata accessor for ExtensionIdentityWrapper);
  *v3 = result;
  return result;
}

size_t sub_1B71FDA20(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F688, &unk_1B7809468, MEMORY[0x1E6966C58]);
  *v3 = result;
  return result;
}

size_t sub_1B71FDA64(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F670, &unk_1B7809450, type metadata accessor for PIIRedactionRegex);
  *v3 = result;
  return result;
}

char *sub_1B71FDAA8(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FEA28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDAC8(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FFA94(a1, a2, a3, *v3, &qword_1EB98F2E0);
  *v3 = result;
  return result;
}

char *sub_1B71FDB00(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FEB38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDB20(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200920(a1, a2, a3, *v3, &qword_1EB98F640);
  *v3 = result;
  return result;
}

char *sub_1B71FDB50(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FEC58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDB70(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FED64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDB90(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200510(a1, a2, a3, *v3, &qword_1EB98F5C8);
  *v3 = result;
  return result;
}

char *sub_1B71FDBC8(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200920(a1, a2, a3, *v3, &qword_1EB98F5B0);
  *v3 = result;
  return result;
}

char *sub_1B71FDBF8(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FEE68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDC18(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FEF6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDC38(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FF070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDC58(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FF290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDC78(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FF394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B71FDC98(void *a1, int64_t a2, char a3)
{
  result = sub_1B71FF498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDCB8(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FF5CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FDCD8(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FF6D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B71FDCF8(void *a1, int64_t a2, char a3)
{
  result = sub_1B71FF7F0(a1, a2, a3, *v3, &qword_1EB98F4D0, &unk_1B780D920, &qword_1EB98F4D8);
  *v3 = result;
  return result;
}

size_t sub_1B71FDD38(size_t a1, int64_t a2, char a3)
{
  result = sub_1B720061C(a1, a2, a3, *v3, &qword_1EB98F4F8, &unk_1B7809260, &qword_1EB98F500);
  *v3 = result;
  return result;
}

size_t sub_1B71FDD78(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F508, &unk_1B7809270, type metadata accessor for Order.ContentItem);
  *v3 = result;
  return result;
}

char *sub_1B71FDDBC(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FFDE8(a1, a2, a3, *v3, &qword_1EB98F4B0);
  *v3 = result;
  return result;
}

char *sub_1B71FDDF4(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FF924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B71FDE14(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F630, &unk_1B7809410, type metadata accessor for Account);
  *v3 = result;
  return result;
}

size_t sub_1B71FDE58(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F2E8, &unk_1B7809048, type metadata accessor for Transaction);
  *v3 = result;
  return result;
}

size_t sub_1B71FDE9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F280, &unk_1B7808FD8, type metadata accessor for AccountBalance);
  *v3 = result;
  return result;
}

size_t sub_1B71FDEE0(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F1B8, &unk_1B780BF10, type metadata accessor for InternalTransaction);
  *v3 = result;
  return result;
}

size_t sub_1B71FDF24(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F548, &unk_1B78092B0, type metadata accessor for ScheduledPayment);
  *v3 = result;
  return result;
}

size_t sub_1B71FDF68(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F540, &unk_1B780BF50, type metadata accessor for RecurringPayment);
  *v3 = result;
  return result;
}

size_t sub_1B71FDFAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F498, &unk_1B7809200, type metadata accessor for PredictedTransaction);
  *v3 = result;
  return result;
}

size_t sub_1B71FDFF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F4E0, &unk_1B7809248, type metadata accessor for FoundInMailItem);
  *v3 = result;
  return result;
}

char *sub_1B71FE034(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FFA94(a1, a2, a3, *v3, &qword_1EB98F658);
  *v3 = result;
  return result;
}

size_t sub_1B71FE06C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F660, &unk_1B7809440, type metadata accessor for InternalAccountBalance);
  *v3 = result;
  return result;
}

size_t sub_1B71FE0B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F308, &unk_1B7809068, type metadata accessor for Institution);
  *v3 = result;
  return result;
}

size_t sub_1B71FE0F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F5E0, &unk_1B7809368, type metadata accessor for BankConnectConsent);
  *v3 = result;
  return result;
}

size_t sub_1B71FE138(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F3B8, &unk_1B7809118, type metadata accessor for Order.PriorityInfo);
  *v3 = result;
  return result;
}

char *sub_1B71FE17C(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FFBA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B71FE19C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F480, &unk_1B78091E8, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
  *v3 = result;
  return result;
}

size_t sub_1B71FE1E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F488, &unk_1B78091F0, type metadata accessor for CascadeExtractedOrder.OrderEmail);
  *v3 = result;
  return result;
}

char *sub_1B71FE224(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FFCC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FE244(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200058(a1, a2, a3, *v3, &qword_1EB98F450);
  *v3 = result;
  return result;
}

char *sub_1B71FE27C(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FFDE8(a1, a2, a3, *v3, &qword_1EB98F440);
  *v3 = result;
  return result;
}

char *sub_1B71FE2B4(char *a1, int64_t a2, char a3)
{
  result = sub_1B71FFEF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B71FE2D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F408, &unk_1B780C240, type metadata accessor for ExtractedOrder.ShippingFulfillment);
  *v3 = result;
  return result;
}

char *sub_1B71FE318(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200920(a1, a2, a3, *v3, &qword_1EB98F420);
  *v3 = result;
  return result;
}

size_t sub_1B71FE348(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F3F8, &unk_1B7809158, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

void *sub_1B71FE38C(void *a1, int64_t a2, char a3)
{
  result = sub_1B720017C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B71FE3AC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F178, &unk_1B7808EB0, type metadata accessor for MapsTransactionInsightInput);
  *v3 = result;
  return result;
}

char *sub_1B71FE3F0(char *a1, int64_t a2, char a3)
{
  result = sub_1B72002B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FE410(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200920(a1, a2, a3, *v3, &qword_1EB98F168);
  *v3 = result;
  return result;
}

void *sub_1B71FE440(void *a1, int64_t a2, char a3)
{
  result = sub_1B72003CC(a1, a2, a3, *v3, &qword_1EB98F378, &unk_1B78090D8, &qword_1EB98F380);
  *v3 = result;
  return result;
}

void *sub_1B71FE480(void *a1, int64_t a2, char a3)
{
  result = sub_1B72003CC(a1, a2, a3, *v3, &qword_1EB98F388, &unk_1B78090E8, &qword_1EB98F390);
  *v3 = result;
  return result;
}

void *sub_1B71FE4C0(void *a1, int64_t a2, char a3)
{
  result = sub_1B72003CC(a1, a2, a3, *v3, &qword_1EB98F360, &unk_1B78090C0, &qword_1EB98F368);
  *v3 = result;
  return result;
}

size_t sub_1B71FE500(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F350, &unk_1B78090B0, type metadata accessor for RawOrderReturn);
  *v3 = result;
  return result;
}

size_t sub_1B71FE544(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F358, &unk_1B78090B8, type metadata accessor for RawOrderFulfillment);
  *v3 = result;
  return result;
}

size_t sub_1B71FE588(size_t a1, int64_t a2, char a3)
{
  result = sub_1B720061C(a1, a2, a3, *v3, &qword_1EB98F330, &unk_1B7809090, &qword_1EB98F338);
  *v3 = result;
  return result;
}

char *sub_1B71FE5C8(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200510(a1, a2, a3, *v3, &qword_1EB98F340);
  *v3 = result;
  return result;
}

size_t sub_1B71FE600(size_t a1, int64_t a2, char a3)
{
  result = sub_1B720061C(a1, a2, a3, *v3, &qword_1EB98F320, &unk_1B7809080, &qword_1EB98F328);
  *v3 = result;
  return result;
}

char *sub_1B71FE640(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FE660(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200920(a1, a2, a3, *v3, &qword_1EB98F2A0);
  *v3 = result;
  return result;
}

size_t sub_1B71FE690(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F2F0, &unk_1B7809050, type metadata accessor for TaskPriorityQueue.PendingTask);
  *v3 = result;
  return result;
}

void *sub_1B71FE6D4(void *a1, int64_t a2, char a3)
{
  result = sub_1B7200A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B71FE6F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F2C0, &unk_1B7809018, type metadata accessor for CredentialCenterKey);
  *v3 = result;
  return result;
}

size_t sub_1B71FE738(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F2B8, &unk_1B7809010, type metadata accessor for RawOrderApplication);
  *v3 = result;
  return result;
}

size_t sub_1B71FE77C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F2A8, &unk_1B7809000, type metadata accessor for RawOrderPaymentTransaction);
  *v3 = result;
  return result;
}

char *sub_1B71FE7C0(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200B68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B71FE7E0(void *a1, int64_t a2, char a3)
{
  result = sub_1B7200C90(a1, a2, a3, *v3, &qword_1EB98F288, &unk_1B7808FE0, &qword_1EB98F290);
  *v3 = result;
  return result;
}

char *sub_1B71FE820(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B71FE840(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F270, &unk_1B7808FC8, type metadata accessor for AccountInfo);
  *v3 = result;
  return result;
}

size_t sub_1B71FE884(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F268, &unk_1B7808FC0, type metadata accessor for ConsentInfo);
  *v3 = result;
  return result;
}

char *sub_1B71FE8C8(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200EF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FE8E8(char *a1, int64_t a2, char a3)
{
  result = sub_1B7201004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FE908(char *a1, int64_t a2, char a3)
{
  result = sub_1B7201124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B71FE928(char *a1, int64_t a2, char a3)
{
  result = sub_1B7201230(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B71FE948(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F1B0, &unk_1B7808EE0, type metadata accessor for TransactionStatistics);
  *v3 = result;
  return result;
}

size_t sub_1B71FE98C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B7201350(a1, a2, a3, *v3, &qword_1EB98F1A0, &unk_1B7808ED0, type metadata accessor for ApplePayTransactionDocumentCredential);
  *v3 = result;
  return result;
}

char *sub_1B71FE9D0(char *a1, int64_t a2, char a3)
{
  result = sub_1B7200920(a1, a2, a3, *v3, &qword_1EB98F198);
  *v3 = result;
  return result;
}

char *sub_1B71FEA28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B71FEB38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B71FEC58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B71FED64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5F8);
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

char *sub_1B71FEE68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B71FEF6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B71FF070(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1B71FF174(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_1B71FF290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B71FF394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F558);
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

void *sub_1B71FF498(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B71FF5CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1B71FF6D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_1B71FF7F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1B71FF924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B71FFA94(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1B71FFBA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B71FFCC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B71FFDE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 95;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[128 * v9])
    {
      memmove(v14, v15, v9 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1B71FFEF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7200058(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 88);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[88 * v9])
    {
      memmove(v13, v14, 88 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1B720017C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B72002B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

void *sub_1B72003CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1B7200510(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

size_t sub_1B720061C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B7200804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7200920(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_1B7200A34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB990D90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7200B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7200C90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1B7200DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7200EF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7201004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7201124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1D0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7201230(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B7201350(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1B7201540(uint64_t a1)
{
  v44 = type metadata accessor for InternalAccount();
  v2 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v39 - v5;
  v6 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v7 = *(a1 + 16);
  if (!v7)
  {
    return v6;
  }

  v8 = *(v4 + 80);
  v45 = *(v4 + 72);
  v41 = v8;
  v42 = (v8 + 32) & ~v8;
  v9 = a1 + v42;
  v40 = xmmword_1B7807CD0;
  while (1)
  {
    v10 = v47;
    sub_1B72053B0(v9, v47, type metadata accessor for InternalAccount);
    v11 = v10 + *(v44 + 20);
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v14 = (v10 + *(v44 + 116));
    v15 = *v14;
    v16 = v14[1];

    v18 = sub_1B72457F8(v13, v12, v15, v16);
    v19 = v6[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v6[3] < v21)
    {
      sub_1B7247DA0(v21, 1);
      v6 = v48;
      v23 = sub_1B72457F8(v13, v12, v15, v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    v46 = v9;
    if (v22)
    {

      v25 = v6[7];
      sub_1B72054D8(v47, v43, type metadata accessor for InternalAccount);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1B723E3F8(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v28 = v45;
      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        v26 = sub_1B723E3F8(v29 > 1, v30 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v30 + 1;
      sub_1B72054D8(v43, v26 + v42 + v30 * v28, type metadata accessor for InternalAccount);
    }

    else
    {
      v31 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6A0);
      v32 = v42;
      v33 = swift_allocObject();
      *(v33 + 16) = v40;
      sub_1B72054D8(v47, v33 + v32, type metadata accessor for InternalAccount);
      v6[(v18 >> 6) + 8] |= 1 << v18;
      v34 = (v6[6] + 32 * v18);
      *v34 = v13;
      v34[1] = v12;
      v34[2] = v15;
      v34[3] = v16;
      *(v6[7] + 8 * v18) = v33;
      v35 = v6[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v6[2] = v37;
      v7 = v31;
      v28 = v45;
    }

    v9 = v46 + v28;
    if (!--v7)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

unint64_t sub_1B72018E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6D8);
    v3 = sub_1B7801CD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7205588(v4, &v13, &qword_1EB98F118);
      v5 = v13;
      v6 = v14;
      result = sub_1B724548C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B72051F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7201A5C(uint64_t a1)
{
  v3 = *(sub_1B78000B8() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7201BB0;

  return sub_1B71F5B44(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1B7201BB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B7201CA4()
{
  result = qword_1EB98F138;
  if (!qword_1EB98F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F138);
  }

  return result;
}

void sub_1B7201CF8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1B7201D10(a1, a2 & 1);
  }
}

void sub_1B7201D10(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_1B7201D98()
{
  result = qword_1EB98F150;
  if (!qword_1EB98F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F150);
  }

  return result;
}

uint64_t sub_1B7201DEC(uint64_t a1, int a2)
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

uint64_t sub_1B7201E34(uint64_t result, int a2, int a3)
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

unint64_t sub_1B7201ED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4E8);
    v3 = sub_1B7801CD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7205588(v4, &v11, &qword_1EB98F4F0);
      v5 = v11;
      result = sub_1B7263598(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B72051F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7201FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F520);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1B7263598(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B72020F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F648);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B724548C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6D0);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F6C8);
      result = sub_1B72454E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B77FFA18();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      started = type metadata accessor for AccountStartDate();
      result = sub_1B72054D8(&v5[v8], v16 + *(*(started - 8) + 72) * v13, type metadata accessor for AccountStartDate);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F668);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B72456B0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1A8);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_1B72456B0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B720261C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F638);
    v7 = sub_1B7801CD8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F218);
      result = sub_1B7245720(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B77FEF58();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 32 * v13;
      v17 = *(v8 + 3);
      v18 = *(v8 + 8);
      *v16 = *v8;
      *(v16 + 8) = v18;
      *(v16 + 24) = v17;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F510);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F518);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F510);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1B724548C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1B77FF4F8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3C0);
    v3 = sub_1B7801CD8();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B7263594(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4B8);
    v3 = sub_1B7801CD8();
    for (i = (a1 + 34); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B72455C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F468);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1B72635A0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5B8);
    v3 = sub_1B7801CD8();
    v4 = (a1 + 32);
    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v19 = *v4;
      v20 = v6;
      v7 = v4[3];
      v21 = v4[2];
      v22[0] = v7;
      *(v22 + 9) = *(v4 + 57);
      result = sub_1B71B4B14(v19, *(&v19 + 1), v20, *(&v20 + 1));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 32 * result);
      v11 = v20;
      *v10 = v19;
      v10[1] = v11;
      v12 = (v3[7] + 48 * result);
      v13 = v21;
      v14 = v22[0];
      *(v12 + 25) = *(v22 + 9);
      *v12 = v13;
      v12[1] = v14;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {
        sub_1B7205588(&v19, v18, &qword_1EB98F5C0);
        return v3;
      }

      sub_1B7205588(&v19, v18, &qword_1EB98F5C0);
      v4 += 5;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F580);
    v3 = sub_1B7801CD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7205588(v4, &v11, &qword_1EB98F588);
      v5 = v11;
      result = sub_1B7263598(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B72051F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7202FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F220);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B724548C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B72030AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F310);
    v3 = sub_1B7801CD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7205588(v4, v13, &qword_1EB98F318);
      result = sub_1B7245898(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B72051F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B72031E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3A8);
    v3 = sub_1B7801CD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7205588(v4, &v11, &qword_1EB98F3B0);
      v5 = v11;
      result = sub_1B7263598(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B72051F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7203310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F598);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F590);
      result = sub_1B72454E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B77FFA18();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B72034F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F438);
  v3 = sub_1B7801CD8();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1B726359C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1B726359C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B72035FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4A8);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_1B7205200(v7);
      result = sub_1B724548C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7203700(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD00);
    v5 = sub_1B7801CD8();
    v6 = a1 + 32;

    while (1)
    {
      sub_1B7205588(v6, &v13, &qword_1EB98F470);
      v7 = v13;
      result = a2(v13);
      if (v9)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      result = sub_1B72051F0(&v14, (v5[7] + 32 * result));
      v10 = v5[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v5[2] = v12;
      v6 += 40;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7203830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F458);
    v3 = sub_1B7801CD8();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[3];
      v20 = v4[2];
      v21 = v6;
      v7 = v4[5];
      v22 = v4[4];
      v23 = v7;
      v8 = v4[1];
      v19[0] = *v4;
      v19[1] = v8;
      v9 = *(&v7 + 1);
      v26 = v20;
      v27 = v6;
      v28 = v22;
      v29 = *(v4 + 80);
      v24 = v19[0];
      v25 = v8;
      sub_1B7205588(v19, &v18, &qword_1EB98F460);
      result = sub_1B7245CF0(&v24);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 88 * result;
      v13 = v27;
      *(v12 + 32) = v26;
      *(v12 + 48) = v13;
      *(v12 + 64) = v28;
      *(v12 + 80) = v29;
      v14 = v25;
      *v12 = v24;
      *(v12 + 16) = v14;
      *(v3[7] + 8 * result) = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 6;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B72039A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F410);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F418);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F410);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1B7245D7C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
      result = sub_1B72054D8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7203B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3E8);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F3E0);
      result = sub_1B72454E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B77FFA18();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for MapsTransactionInsightResult(0);
      result = sub_1B72054D8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for MapsTransactionInsightResult);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B7203DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F260);
  v3 = sub_1B7801CD8();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1B7263594(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1B7263594(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7203EF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = sub_1B7801CD8();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_1B7205588(v14, v10, a2);
      result = sub_1B72454E8(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = sub_1B77FFA18();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B72040D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F240);
  v3 = sub_1B7801CD8();
  v4 = *(a1 + 48);
  *v21 = *(a1 + 32);
  *&v21[16] = v4;
  v5 = *(a1 + 80);
  *&v21[32] = *(a1 + 64);
  *&v21[48] = v5;
  v6 = v21[0];
  result = sub_1B7263594(v21[0]);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1B7205588(v21, v20, &qword_1EB98F248);
    return v3;
  }

  v9 = (a1 + 96);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v6;
    v10 = v3[7] + 56 * result;
    v11 = *&v21[8];
    v12 = *&v21[24];
    v13 = *&v21[40];
    *(v10 + 48) = *&v21[56];
    *(v10 + 16) = v12;
    *(v10 + 32) = v13;
    *v10 = v11;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1B7205588(v21, v20, &qword_1EB98F248);
    v17 = v9[1];
    *v21 = *v9;
    *&v21[16] = v17;
    v18 = v9[3];
    *&v21[32] = v9[2];
    *&v21[48] = v18;
    v6 = v21[0];
    result = sub_1B7263594(v21[0]);
    v9 += 4;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7204254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F230);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F238);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F230);
      result = sub_1B72454E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B77FFA18();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
      result = sub_1B72054D8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7204470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3D0);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F3C8);
      result = sub_1B7245EE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B77FF4F8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7204694(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1B7801CD8();

    for (i = (a1 + 48); ; i += 24)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1B724548C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B720479C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1B7801CD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1B724548C(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B720489C()
{
  v1 = *(sub_1B78000B8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B71F8358(v3, v4, v0 + v2, v5);
}

unint64_t sub_1B72049A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2D8);
    v7 = sub_1B7801CD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7205588(v9, v5, &qword_1EB98F2D0);
      result = sub_1B72454E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B77FFA18();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for TransactionGroup.StylingMetadata(0);
      result = sub_1B72054D8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for TransactionGroup.StylingMetadata);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7204BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F278);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B724548C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B7204CC0(void *a1)
{
  if (!a1)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_17:
    sub_1B7205418(&v25, &qword_1EB98FCB0);
    return;
  }

  if ([a1 result])
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F180);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v23;
  if (v23 >> 62)
  {
    if (!sub_1B7801958() || sub_1B7801958() != 1)
    {
      goto LABEL_38;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_38;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8CA5DC0](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v3 = *(v23 + 32);
  }

  v4 = v3;
  v5 = [v3 author];

  if (!v5)
  {
    goto LABEL_38;
  }

  v1 = 0xD000000000000012;
  v6 = sub_1B7800868();
  v8 = v7;

  if (v6 == 0xD000000000000015 && 0x80000001B7875390 == v8)
  {
  }

  else
  {
    v9 = sub_1B78020F8();

    if ((v9 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v10 = *(v2 + 32);
  }

  v11 = v10;

  v12 = [v11 changes];

  if (!v12)
  {
    return;
  }

  sub_1B7205540(0, &unk_1EB9969A0);
  v2 = sub_1B7800C38();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_27;
    }

LABEL_38:

    return;
  }

LABEL_46:
  if (sub_1B7801958() != 1 || !sub_1B7801958())
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v2 + 32);
    goto LABEL_30;
  }

LABEL_50:
  v13 = MEMORY[0x1B8CA5DC0](0, v2);
LABEL_30:
  v14 = v13;

  v15 = [v14 updatedProperties];

  if (v15)
  {
    sub_1B7205540(0, &qword_1EB98F188);
    sub_1B72050F0();
    v16 = sub_1B7800FA8();

    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = sub_1B7801958();
    }

    else
    {
      v17 = *(v16 + 16);
    }

    if (v17 != 1)
    {
      goto LABEL_38;
    }

    v18 = sub_1B72384C4(v16);

    if (v18)
    {
      v19 = [v18 name];

      v20 = sub_1B7800868();
      v22 = v21;

      if (v20 == v1 && 0x80000001B7875440 == v22)
      {
        goto LABEL_38;
      }

      sub_1B78020F8();
    }
  }
}

unint64_t sub_1B72050F0()
{
  result = qword_1EB98F190;
  if (!qword_1EB98F190)
  {
    sub_1B7205540(255, &qword_1EB98F188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F190);
  }

  return result;
}

uint64_t sub_1B72051A8(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1B72051F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1B7205200(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1B7205210()
{
  result = qword_1EDAF6538;
  if (!qword_1EDAF6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6538);
  }

  return result;
}

unint64_t sub_1B7205294()
{
  result = qword_1EB98F6B0;
  if (!qword_1EB98F6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99AA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F6B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B7205340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72053B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7205418(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7205478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B72054D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7205540(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B7205588(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FinancialDataPersistentHistoryChange.init(inserted:updated:deleted:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void FinancialDataPersistentHistoryChange.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
}

uint64_t sub_1B7205634()
{
  v1 = 0x64657461647075;
  if (*v0 != 1)
  {
    v1 = 0x646574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465747265736E69;
  }
}

uint64_t sub_1B7205690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7207AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72056B8(uint64_t a1)
{
  v2 = sub_1B7205944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72056F4(uint64_t a1)
{
  v2 = sub_1B7205944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FinancialDataPersistentHistoryChange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7205944();

  sub_1B78023F8();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6F0);
  sub_1B7205998();
  sub_1B7801FC8();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    sub_1B7801FC8();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
    sub_1B7205A4C();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B7205944()
{
  result = qword_1EB98F6E8;
  if (!qword_1EB98F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F6E8);
  }

  return result;
}

unint64_t sub_1B7205998()
{
  result = qword_1EB98F6F8;
  if (!qword_1EB98F6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F6F0);
    sub_1B720ABA4(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F6F8);
  }

  return result;
}

unint64_t sub_1B7205A4C()
{
  result = qword_1EB98F710;
  if (!qword_1EB98F710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F708);
    sub_1B720ABA4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F710);
  }

  return result;
}

uint64_t FinancialDataPersistentHistoryChange.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F720);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7205944();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6F0);
  v13 = 0;
  sub_1B7205DBC();
  sub_1B7801E48();
  v12 = v14;
  v13 = 1;
  sub_1B7801E48();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
  v13 = 2;
  sub_1B7205E70();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v12;
  a2[1] = v9;
  a2[2] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B7205DBC()
{
  result = qword_1EB98F728;
  if (!qword_1EB98F728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F6F0);
    sub_1B720ABA4(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F728);
  }

  return result;
}

unint64_t sub_1B7205E70()
{
  result = qword_1EB98F738;
  if (!qword_1EB98F738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F708);
    sub_1B720ABA4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F738);
  }

  return result;
}

uint64_t FinancialDataPersistentHistoryChange.XPC.value.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value);
  v3 = *(v1 + OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value + 8);
  v4 = *(v1 + OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

id FinancialDataPersistentHistoryChange.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value];
  *v5 = *a1;
  *(v5 + 2) = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FinancialDataPersistentHistoryChange.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value];
  *v5 = *a1;
  *(v5 + 2) = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FinancialDataPersistentHistoryChange.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7207BC0(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id FinancialDataPersistentHistoryChange.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7207BC0(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_1B7206190(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  sub_1B720ADA4();

  sub_1B7801248();

  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit0A5StoreC18BackgroundDataTypeO8XPCArrayC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F8B0);
  sub_1B720AD2C(&qword_1EDAF6518, sub_1B71F26AC);
  sub_1B7801248();

  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit11TransactionV4IconV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v4 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 32);
  v9 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value);
  v10 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 8);
  sub_1B720ABEC(v9, v10);
  sub_1B720AC40();
  v5 = v4;
  sub_1B7801248();
  sub_1B720A388(v9, v10);

  [v3 finishEncoding];
  v6 = [v3 encodedData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B7800838();
    [a1 encodeObject:v7 forKey:v8];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit11TransactionV8XPCArrayC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F878);
  sub_1B720AA3C();
  sub_1B7801248();

  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit22ThumbnailConfigurationV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v4 = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 16);
  v15[0] = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value);
  v15[1] = v4;
  v16[0] = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 32);
  v5 = v16[0];
  *(v16 + 9) = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 41);
  v12 = v15[0];
  v13 = v4;
  v14[0] = v5;
  *(v14 + 9) = *(v16 + 9);
  sub_1B720A8E4(v15, &v9);
  sub_1B720A940();
  sub_1B7801248();
  v9 = v12;
  v10 = v13;
  v11[0] = v14[0];
  *(v11 + 9) = *(v14 + 9);
  sub_1B720A994(&v9);
  [v3 finishEncoding];
  v6 = [v3 encodedData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B7800838();
    [a1 encodeObject:v7 forKey:v8];
  }

  else
  {
    __break(1u);
    v9 = v12;
    v10 = v13;
    v11[0] = v14[0];
    *(v11 + 9) = *(v14 + 9);
    sub_1B720A994(&v9);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_1B7206928(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  a3();
  sub_1B7801248();
  [v5 finishEncoding];
  v6 = [v5 encodedData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B7800838();
    [a1 encodeObject:v7 forKey:v8];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit22AccountSelectionResultO3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR___XPCAccountSelectionResult_value);
  sub_1B720A65C(v7);
  sub_1B720A69C();
  sub_1B7801248();
  sub_1B720A6F0(v7);
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800838();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit22MapsTransactionInsightV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  type metadata accessor for MapsTransactionInsight(0);
  sub_1B720ABA4(&qword_1EB98F818, type metadata accessor for MapsTransactionInsight);
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit24MapsStyleAttributesInputV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  sub_1B720A484();

  sub_1B7801248();

  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit19MapsHeroImageResultV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  type metadata accessor for MapsHeroImageResult(0);
  sub_1B720ABA4(&qword_1EB98F7F0, type metadata accessor for MapsHeroImageResult);
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit19MapsHeroImageResultV6EntityO3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  sub_1B720A3DC();
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit11TransactionV7InsightO3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  type metadata accessor for Transaction.Insight(0);
  sub_1B720ABA4(&qword_1EB98F7C8, type metadata accessor for Transaction.Insight);
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit10TimeWindowV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  type metadata accessor for TimeWindow(0);
  sub_1B720ABA4(&qword_1EDAF8F80, type metadata accessor for TimeWindow);
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit19InternalTransactionV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  type metadata accessor for InternalTransaction(0);
  sub_1B720ABA4(&unk_1EB99E230, type metadata accessor for InternalTransaction);
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit27MapsTransactionInsightInputV3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  type metadata accessor for MapsTransactionInsightInput(0);
  sub_1B720ABA4(&qword_1EB98F790, type metadata accessor for MapsTransactionInsightInput);
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s10FinanceKit28MapsTransactionInsightResultO3XPCC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  type metadata accessor for MapsTransactionInsightResult(0);
  sub_1B720ABA4(&qword_1EB98F770, type metadata accessor for MapsTransactionInsightResult);
  sub_1B7801248();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800838();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

id FinancialDataPersistentHistoryChange.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinancialDataPersistentHistoryChange.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B720796C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value);
  v3 = *(v1 + OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value + 8);
  v4 = *(v1 + OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

id sub_1B72079C4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value];
  *v5 = *a1;
  *(v5 + 2) = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FinancialDataPersistentHistoryChange.xpcValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = type metadata accessor for FinancialDataPersistentHistoryChange.XPC();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value];
  *v6 = v1;
  *(v6 + 1) = v2;
  *(v6 + 2) = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B7207AA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747265736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657461647075 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646574656C6564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

id sub_1B7207BC0(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720ADF8();
      sub_1B78012A8();
      v10 = v18;
      v11 = v19;
      if (v17)
      {
        v12 = type metadata accessor for FinancialDataPersistentHistoryChange.XPC();
        v13 = objc_allocWithZone(v12);
        v14 = &v13[OBJC_IVAR___XPCFinancialDataPersistentHistoryChange_value];
        *v14 = v17;
        *(v14 + 1) = v10;
        *(v14 + 2) = v11;
        v16.receiver = v13;
        v16.super_class = v12;
        v15 = objc_msgSendSuper2(&v16, sel_init);
        [v8 finishDecoding];

        return v15;
      }

      sub_1B720AE4C(0);
      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B7207D7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7207DC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B7207E54()
{
  result = qword_1EB98F758;
  if (!qword_1EB98F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F758);
  }

  return result;
}

unint64_t sub_1B7207EAC()
{
  result = qword_1EB98F760;
  if (!qword_1EB98F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F760);
  }

  return result;
}

unint64_t sub_1B7207F04()
{
  result = qword_1EB98F768;
  if (!qword_1EB98F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F768);
  }

  return result;
}

id sub_1B7207F58(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F8B0);
      sub_1B720AD2C(&unk_1EDAF6508, sub_1B71F27A8);
      sub_1B78012A8();
      if (v14)
      {
        v10 = type metadata accessor for FinanceStore.BackgroundDataType.XPCArray();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR___XPCBackgroundDataType_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B7208104(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720AC94();
      sub_1B78012A8();
      v10 = v23;
      v11 = v24;
      v12 = v21;
      v13 = v22;
      if (v24 != 1)
      {
        v14 = HIDWORD(v22);
        v15 = type metadata accessor for Transaction.Icon.XPC();
        v16 = objc_allocWithZone(v15);
        v17 = &v16[OBJC_IVAR___XPCTransactionIcon_value];
        *v17 = v20;
        *(v17 + 1) = v12;
        *(v17 + 4) = v13;
        *(v17 + 5) = v14;
        v17[24] = v10;
        *(v17 + 4) = v11;
        v19.receiver = v16;
        v19.super_class = v15;
        v18 = objc_msgSendSuper2(&v19, sel_init);
        [v8 finishDecoding];

        return v18;
      }

      sub_1B720ACE8(v20, v21, v22, v23, 1);
      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B72082B4(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F878);
      sub_1B720AAF0();
      sub_1B78012A8();
      if (v14)
      {
        v10 = type metadata accessor for Transaction.XPCArray();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR___XPCTransactions_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B7208430(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720A9E8();
      sub_1B78012A8();
      if (v18)
      {
        v15 = v18;
        v16 = v19;
        v17[0] = v20[0];
        *(v17 + 9) = *(v20 + 9);
        v10 = type metadata accessor for ThumbnailConfiguration.XPC();
        v11 = objc_allocWithZone(v10);
        v12 = &v11[OBJC_IVAR___XPCThumbnailConfiguration_value];
        *v12 = v18;
        *(v12 + 41) = *(v17 + 9);
        *(v12 + 2) = v17[0];
        *(v12 + 1) = v16;
        v14.receiver = v11;
        v14.super_class = v10;
        v13 = objc_msgSendSuper2(&v14, sel_init);
        [v8 finishDecoding];

        return v13;
      }

      v15 = v18;
      v16 = v19;
      v17[0] = v20[0];
      *(v17 + 9) = *(v20 + 9);
      sub_1B7205418(&v15, &qword_1EB98F870);
      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B720860C(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720A890();
      sub_1B78012A8();
      if (v14 != 4)
      {
        refreshed = type metadata accessor for BackgroundRefreshAlertResult.XPC();
        v11 = objc_allocWithZone(refreshed);
        v11[OBJC_IVAR___XPCBackgroundRefreshAlertResult_value] = v14;
        v13.receiver = v11;
        v13.super_class = refreshed;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B7208778(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720A7E8();
      sub_1B78012A8();
      if (v14 != 3)
      {
        v10 = type metadata accessor for AuthorizationStatus.XPC();
        v11 = objc_allocWithZone(v10);
        v11[OBJC_IVAR___XPCAuthorizationStatus_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B72088E4(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720A730();
      sub_1B78012A8();
      v10 = v17;
      if (v16 != 1)
      {
        v11 = type metadata accessor for AccountSelectionResult.XPC();
        v12 = objc_allocWithZone(v11);
        v13 = &v12[OBJC_IVAR___XPCAccountSelectionResult_value];
        *v13 = v16;
        *(v13 + 1) = v10;
        v15.receiver = v12;
        v15.super_class = v11;
        v14 = objc_msgSendSuper2(&v15, sel_init);
        [v8 finishDecoding];

        return v14;
      }

      sub_1B720A784(1);
      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B7208A60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98F820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for MapsTransactionInsight(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1B720A33C();
  v12 = sub_1B78014F8();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_1B77FF5B8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v18 = sub_1B77EEC00();
    sub_1B720A388(v14, v16);
    if (v18)
    {
      sub_1B720ABA4(&unk_1EB99EBC0, type metadata accessor for MapsTransactionInsight);
      sub_1B78012A8();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_1B720A52C(v4, v11, type metadata accessor for MapsTransactionInsight);
        sub_1B720A594(v11, v9, type metadata accessor for MapsTransactionInsight);
        v20 = type metadata accessor for MapsTransactionInsight.XPC(0);
        v21 = objc_allocWithZone(v20);
        sub_1B720A594(v9, v21 + OBJC_IVAR___XPCMapsTransactionInsight_value, type metadata accessor for MapsTransactionInsight);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_1B720A5FC(v9, type metadata accessor for MapsTransactionInsight);
        sub_1B720A5FC(v11, type metadata accessor for MapsTransactionInsight);
        [v18 finishDecoding];

        return v22;
      }

      sub_1B7205418(v4, &unk_1EB98F820);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B7208D80(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720A4D8();
      sub_1B78012A8();
      if (v17)
      {
        v10 = v18;
        v11 = v19;
        v12 = type metadata accessor for MapsStyleAttributesInput.XPC();
        v13 = objc_allocWithZone(v12);
        v14 = &v13[OBJC_IVAR___XPCMapsStyleAttributesInput_value];
        *v14 = v17;
        *(v14 + 1) = v10;
        v14[16] = v11 & 1;
        v16.receiver = v13;
        v16.super_class = v12;
        v15 = objc_msgSendSuper2(&v16, sel_init);
        [v8 finishDecoding];

        return v15;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B7208F0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for MapsHeroImageResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1B720A33C();
  v12 = sub_1B78014F8();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_1B77FF5B8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v18 = sub_1B77EEC00();
    sub_1B720A388(v14, v16);
    if (v18)
    {
      sub_1B720ABA4(&qword_1EB98F800, type metadata accessor for MapsHeroImageResult);
      sub_1B78012A8();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_1B720A52C(v4, v11, type metadata accessor for MapsHeroImageResult);
        sub_1B720A594(v11, v9, type metadata accessor for MapsHeroImageResult);
        v20 = type metadata accessor for MapsHeroImageResult.XPC(0);
        v21 = objc_allocWithZone(v20);
        sub_1B720A594(v9, v21 + OBJC_IVAR___XPCMapsHeroImageResult_value, type metadata accessor for MapsHeroImageResult);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_1B720A5FC(v9, type metadata accessor for MapsHeroImageResult);
        sub_1B720A5FC(v11, type metadata accessor for MapsHeroImageResult);
        [v18 finishDecoding];

        return v22;
      }

      sub_1B7205418(v4, &qword_1EB98F7F8);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B720922C(void *a1)
{
  sub_1B720A33C();
  v2 = sub_1B78014F8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v4, v6);
    if (v8)
    {
      sub_1B720A430();
      sub_1B78012A8();
      if (v14 != 2)
      {
        v10 = type metadata accessor for MapsHeroImageResult.Entity.XPC();
        v11 = objc_allocWithZone(v10);
        v11[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = v14 & 1;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B720939C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Transaction.Insight(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1B720A33C();
  v12 = sub_1B78014F8();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_1B77FF5B8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v18 = sub_1B77EEC00();
    sub_1B720A388(v14, v16);
    if (v18)
    {
      sub_1B720ABA4(&qword_1EB98F7D8, type metadata accessor for Transaction.Insight);
      sub_1B78012A8();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_1B720A52C(v4, v11, type metadata accessor for Transaction.Insight);
        sub_1B720A594(v11, v9, type metadata accessor for Transaction.Insight);
        v20 = type metadata accessor for Transaction.Insight.XPC(0);
        v21 = objc_allocWithZone(v20);
        sub_1B720A594(v9, v21 + OBJC_IVAR___XPCTransactionInsight_value, type metadata accessor for Transaction.Insight);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_1B720A5FC(v9, type metadata accessor for Transaction.Insight);
        sub_1B720A5FC(v11, type metadata accessor for Transaction.Insight);
        [v18 finishDecoding];

        return v22;
      }

      sub_1B7205418(v4, &qword_1EB98F7D0);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B72096BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98F7B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for TimeWindow(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1B720A33C();
  v12 = sub_1B78014F8();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_1B77FF5B8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v18 = sub_1B77EEC00();
    sub_1B720A388(v14, v16);
    if (v18)
    {
      sub_1B720ABA4(&unk_1EDAF8F70, type metadata accessor for TimeWindow);
      sub_1B78012A8();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_1B720A52C(v4, v11, type metadata accessor for TimeWindow);
        sub_1B720A594(v11, v9, type metadata accessor for TimeWindow);
        v20 = type metadata accessor for TimeWindow.XPC(0);
        v21 = objc_allocWithZone(v20);
        sub_1B720A594(v9, v21 + OBJC_IVAR___XPCTimeWindow_value, type metadata accessor for TimeWindow);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_1B720A5FC(v9, type metadata accessor for TimeWindow);
        sub_1B720A5FC(v11, type metadata accessor for TimeWindow);
        [v18 finishDecoding];

        return v22;
      }

      sub_1B7205418(v4, &unk_1EB98F7B8);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B72099DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for InternalTransaction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1B720A33C();
  v12 = sub_1B78014F8();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_1B77FF5B8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v18 = sub_1B77EEC00();
    sub_1B720A388(v14, v16);
    if (v18)
    {
      sub_1B720ABA4(&unk_1EB99E270, type metadata accessor for InternalTransaction);
      sub_1B78012A8();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_1B720A52C(v4, v11, type metadata accessor for InternalTransaction);
        sub_1B720A594(v11, v9, type metadata accessor for InternalTransaction);
        v20 = type metadata accessor for InternalTransaction.XPC(0);
        v21 = objc_allocWithZone(v20);
        sub_1B720A594(v9, v21 + OBJC_IVAR___XPCInternalTransaction_value, type metadata accessor for InternalTransaction);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_1B720A5FC(v9, type metadata accessor for InternalTransaction);
        sub_1B720A5FC(v11, type metadata accessor for InternalTransaction);
        [v18 finishDecoding];

        return v22;
      }

      sub_1B7205418(v4, &qword_1EB98F7B0);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B7209CFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F798);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for MapsTransactionInsightInput(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1B720A33C();
  v12 = sub_1B78014F8();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_1B77FF5B8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v18 = sub_1B77EEC00();
    sub_1B720A388(v14, v16);
    if (v18)
    {
      sub_1B720ABA4(&unk_1EB98F7A0, type metadata accessor for MapsTransactionInsightInput);
      sub_1B78012A8();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_1B720A52C(v4, v11, type metadata accessor for MapsTransactionInsightInput);
        sub_1B720A594(v11, v9, type metadata accessor for MapsTransactionInsightInput);
        v20 = type metadata accessor for MapsTransactionInsightInput.XPC(0);
        v21 = objc_allocWithZone(v20);
        sub_1B720A594(v9, v21 + OBJC_IVAR___XPCMapsTransactionInsightInput_value, type metadata accessor for MapsTransactionInsightInput);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_1B720A5FC(v9, type metadata accessor for MapsTransactionInsightInput);
        sub_1B720A5FC(v11, type metadata accessor for MapsTransactionInsightInput);
        [v18 finishDecoding];

        return v22;
      }

      sub_1B7205418(v4, &qword_1EB98F798);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_1B720A01C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98F778);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for MapsTransactionInsightResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1B720A33C();
  v12 = sub_1B78014F8();
  if (v12)
  {
    v13 = v12;
    v23 = v6;
    v14 = sub_1B77FF5B8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v18 = sub_1B77EEC00();
    sub_1B720A388(v14, v16);
    if (v18)
    {
      sub_1B720ABA4(&qword_1EB98F788, type metadata accessor for MapsTransactionInsightResult);
      sub_1B78012A8();
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        sub_1B720A52C(v4, v11, type metadata accessor for MapsTransactionInsightResult);
        sub_1B720A594(v11, v9, type metadata accessor for MapsTransactionInsightResult);
        v20 = type metadata accessor for MapsTransactionInsightResult.XPC(0);
        v21 = objc_allocWithZone(v20);
        sub_1B720A594(v9, v21 + OBJC_IVAR___XPCMapsTransactionInsightResult_value, type metadata accessor for MapsTransactionInsightResult);
        v24.receiver = v21;
        v24.super_class = v20;
        v22 = objc_msgSendSuper2(&v24, sel_init);
        sub_1B720A5FC(v9, type metadata accessor for MapsTransactionInsightResult);
        sub_1B720A5FC(v11, type metadata accessor for MapsTransactionInsightResult);
        [v18 finishDecoding];

        return v22;
      }

      sub_1B7205418(v4, &unk_1EB98F778);
      [v18 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1B720A33C()
{
  result = qword_1EDAF93D0;
  if (!qword_1EDAF93D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAF93D0);
  }

  return result;
}

uint64_t sub_1B720A388(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B720A3DC()
{
  result = qword_1EB98F7E0;
  if (!qword_1EB98F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F7E0);
  }

  return result;
}

unint64_t sub_1B720A430()
{
  result = qword_1EB98F7E8;
  if (!qword_1EB98F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F7E8);
  }

  return result;
}

unint64_t sub_1B720A484()
{
  result = qword_1EB98F808;
  if (!qword_1EB98F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F808);
  }

  return result;
}

unint64_t sub_1B720A4D8()
{
  result = qword_1EB98F810;
  if (!qword_1EB98F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F810);
  }

  return result;
}

uint64_t sub_1B720A52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B720A594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B720A5FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B720A65C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B720A69C()
{
  result = qword_1EB98F830;
  if (!qword_1EB98F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F830);
  }

  return result;
}

uint64_t sub_1B720A6F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B720A730()
{
  result = qword_1EB98F838;
  if (!qword_1EB98F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F838);
  }

  return result;
}

uint64_t sub_1B720A784(uint64_t result)
{
  if (result != 1)
  {
    return sub_1B720A6F0(result);
  }

  return result;
}

unint64_t sub_1B720A794()
{
  result = qword_1EB98F840;
  if (!qword_1EB98F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F840);
  }

  return result;
}

unint64_t sub_1B720A7E8()
{
  result = qword_1EB98F848;
  if (!qword_1EB98F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F848);
  }

  return result;
}

unint64_t sub_1B720A83C()
{
  result = qword_1EB98F850;
  if (!qword_1EB98F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F850);
  }

  return result;
}

unint64_t sub_1B720A890()
{
  result = qword_1EB98F858;
  if (!qword_1EB98F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F858);
  }

  return result;
}

unint64_t sub_1B720A940()
{
  result = qword_1EB98F860;
  if (!qword_1EB98F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F860);
  }

  return result;
}

unint64_t sub_1B720A9E8()
{
  result = qword_1EB98F868;
  if (!qword_1EB98F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F868);
  }

  return result;
}

unint64_t sub_1B720AA3C()
{
  result = qword_1EB98F880;
  if (!qword_1EB98F880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F878);
    sub_1B720ABA4(&qword_1EB98F888, type metadata accessor for Transaction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F880);
  }

  return result;
}

unint64_t sub_1B720AAF0()
{
  result = qword_1EB98F890;
  if (!qword_1EB98F890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F878);
    sub_1B720ABA4(&qword_1EB98F898, type metadata accessor for Transaction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F890);
  }

  return result;
}

uint64_t sub_1B720ABA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B720ABEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B720AC40()
{
  result = qword_1EB98F8A0;
  if (!qword_1EB98F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F8A0);
  }

  return result;
}

unint64_t sub_1B720AC94()
{
  result = qword_1EB98F8A8;
  if (!qword_1EB98F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F8A8);
  }

  return result;
}

void sub_1B720ACE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5 != 1)
  {
    sub_1B720A388(a1, a2);
  }
}

uint64_t sub_1B720AD2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F8B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B720ADA4()
{
  result = qword_1EB98F8B8;
  if (!qword_1EB98F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F8B8);
  }

  return result;
}

unint64_t sub_1B720ADF8()
{
  result = qword_1EB98F8C0;
  if (!qword_1EB98F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F8C0);
  }

  return result;
}

uint64_t sub_1B720AE4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1B720AE98()
{
  v0 = drand48() * 1.84467441e19;
  if (COERCE__INT64(fabs(v0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v0 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v0 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v1 = drand48() * 65536.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
  }
}

void sub_1B720AF58(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1B77FF5B8();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

id ManagedTransactionIcon.source.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 sourceValue];
  if (result > 2)
  {
    sub_1B7801A78();

    [v2 sourceValue];
    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id (*ManagedTransactionIcon.source.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedTransactionIcon.source.getter((a1 + 8));
  return sub_1B720B110;
}

Swift::Void __swiftcall ManagedTransactionIcon.willSave()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v3 = sub_1B7800C38();

    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return;
      }

      goto LABEL_4;
    }

    v6 = sub_1B7801958();

    if (!v6)
    {
LABEL_4:
      v5 = [v0 managedObjectContext];
      [v5 deleteObject_];
    }
  }
}

id static ManagedTransactionIcon.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedTransactionIcon;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t sub_1B720B328(void **a1, void **a2)
{
  v4 = sub_1B77FF988();
  v55 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - v14;
  v16 = *a1;
  v17 = *a2;
  ManagedTransactionIcon.source.getter(&v59);
  v18 = qword_1B7809798[v59];
  ManagedTransactionIcon.source.getter(&v58);
  if (v18 == qword_1B7809798[v58])
  {
    v19 = [v16 expiryDate];
    if (v19)
    {
      v20 = v19;
      sub_1B77FF928();

      v21 = v55;
      v22 = v55[7];
      v22(v15, 0, 1, v4);
    }

    else
    {
      v21 = v55;
      v22 = v55[7];
      v22(v15, 1, 1, v4);
    }

    v26 = [v17 expiryDate];
    if (v26)
    {
      v27 = v26;
      sub_1B77FF928();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v22(v13, v28, 1, v4);
    v29 = *(v54 + 48);
    sub_1B7205340(v15, v9);
    sub_1B7205340(v13, &v9[v29]);
    v30 = v21[6];
    v31 = v30(v9, 1, v4);
    v32 = v30(&v9[v29], 1, v4);
    if (v31 == 1)
    {
      if (v32 == 1)
      {
        v33 = [v16 dataHash];
        v34 = sub_1B77FF5B8();
        v36 = v35;

        v37 = sub_1B77FF5A8();
        v39 = v38;
        sub_1B720A388(v34, v36);
        v40 = [v16 dataHash];
        v41 = sub_1B77FF5B8();
        v43 = v42;

        v44 = sub_1B77FF5A8();
        v46 = v45;
        sub_1B720A388(v41, v43);
        if (v37 == v44 && v39 == v46)
        {

          v24 = 0;
        }

        else
        {
          v24 = sub_1B78020F8();
        }
      }

      else
      {
        sub_1B71F31EC(&v9[v29]);
        v24 = 0;
      }
    }

    else if (v32 == 1)
    {
      sub_1B71F31EC(v9);
      v24 = 1;
    }

    else
    {
      v47 = v21[4];
      v48 = v52;
      v47(v52, v9, v4);
      v49 = v53;
      v47(v53, &v9[v29], v4);
      v24 = sub_1B77FF8C8();
      v50 = v21[1];
      v50(v49, v4);
      v50(v48, v4);
    }
  }

  else
  {
    ManagedTransactionIcon.source.getter(&v57);
    v23 = qword_1B7809798[v57];
    ManagedTransactionIcon.source.getter(&v56);
    v24 = v23 < qword_1B7809798[v56];
  }

  return v24 & 1;
}

id ManagedTransactionIcon.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTransactionIcon.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTransactionIcon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedInternalTransaction.icon.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 transactionIconObject];

  return v2;
}

uint64_t sub_1B720B9C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B77E6DD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B720BA44(v6);
  return sub_1B7801B78();
}

void sub_1B720BA44(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B7802038();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedTransactionIcon();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B720BC34(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B720BB44(0, v2, 1, a1);
  }
}

void sub_1B720BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1B720B328(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1B720BC34(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_20;
    }

    v98 = v6;
    v10 = *a3;
    v11 = *(*a3 + 8 * v7);
    v101 = *(*a3 + 8 * v9);
    v12 = v101;
    v102 = v11;
    v13 = v11;
    v14 = v12;
    v15 = sub_1B720B328(&v102, &v101);
    if (v4)
    {

      return;
    }

    v16 = v15;

    v17 = v9 + 2;
    v95 = v9;
    v18 = 8 * v9;
    v5 = v10 + v18 + 16;
    while (1)
    {
      v7 = v98;
      if (v98 == v17)
      {
        break;
      }

      v19 = *v5;
      v101 = *(v5 - 8);
      v20 = v101;
      v102 = v19;
      v21 = v19;
      v22 = v20;
      v23 = sub_1B720B328(&v102, &v101);

      ++v17;
      v5 += 8;
      if ((v16 ^ v23))
      {
        v7 = v17 - 1;
        break;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v7 < v95)
    {
      goto LABEL_124;
    }

    if (v95 < v7)
    {
      v25 = 8 * v7 - 8;
      v26 = v7;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v28 = *(v27 + v18);
          *(v27 + v18) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v18 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v9 = v95;
      goto LABEL_20;
    }

    v9 = v95;
LABEL_20:
    v29 = a3[1];
    if (v7 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_120;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_133;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v9 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v9 + a4;
    }

    if (v30 < v9)
    {
      goto LABEL_123;
    }

    if (v7 == v30)
    {
LABEL_133:
      if (v7 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = v9;
      v78 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v96 = v77;
      v79 = v77 - v7;
      v92 = v30;
      do
      {
        v80 = *(v78 + 8 * v7);
        v93 = v79;
        v99 = v5;
        do
        {
          v101 = *v5;
          v81 = v101;
          v102 = v80;
          v82 = v80;
          v83 = v81;
          v84 = sub_1B720B328(&v102, &v101);
          if (v4)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v5;
          v80 = *(v5 + 8);
          *v5 = v80;
          *(v5 + 8) = v86;
          v5 -= 8;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v5 = v99 + 8;
        v79 = v93 - 1;
      }

      while (v7 != v92);
      v7 = v92;
      v9 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B723E420(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = sub_1B723E420((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v37 = *(v8 + 4);
      v38 = *(v8 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_49:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v8[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v8[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v63 = &v8[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_63:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v8[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_70:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_125;
    }

    v5 = *&v8[16 * v74 + 32];
    v75 = *&v8[16 * v36 + 40];
    sub_1B720C290((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v75), v35);
    if (v4)
    {
      goto LABEL_100;
    }

    if (v75 < v5)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B77E4CA4(v8);
    }

    if (v74 >= *(v8 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v8[16 * v74];
    *(v76 + 4) = v5;
    *(v76 + 5) = v75;
    v103 = v8;
    sub_1B77E4C18(v36);
    v8 = v103;
    v33 = *(v103 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
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
  v8 = sub_1B77E4CA4(v8);
LABEL_92:
  v103 = v8;
  v88 = *(v8 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v8[16 * v88];
      v90 = *&v8[16 * v88 + 24];
      sub_1B720C290((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v5);
      if (v4)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1B77E4CA4(v8);
      }

      if (v88 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v8[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v103 = v8;
      sub_1B77E4C18(v88 - 1);
      v8 = v103;
      v88 = *(v103 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1B720C290(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B720B328(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B720B328(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

unint64_t sub_1B720C62C(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v95 - v10;
  v11 = type metadata accessor for Duration();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v95 - v14;
  v113 = sub_1B77FFB08();
  v120 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1B77FFC88();
  v121 = *(v115 - 8);
  v16 = MEMORY[0x1EEE9AC00](v115);
  v103 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v95 - v18;
  v109 = sub_1B77FF988();
  v116 = *(v109 - 8);
  v19 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v95 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v112 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v95 - v25;
  v26 = sub_1B78006D8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1B7800478();
  v122 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v33 = *(a1 + 8);
  LODWORD(v31) = *(a1 + 20);
  v99 = *(a1 + 16);
  v98 = v31;
  v117 = *(a1 + 24);
  v97 = *(a1 + 32);
  sub_1B720D66C(&qword_1EB99ED20, MEMORY[0x1E6966620]);
  sub_1B7800468();
  sub_1B720ABEC(v34, v33);
  v35 = v123;
  sub_1B72B82D4(v34, v33);
  v123 = v35;
  v118 = v33;
  v119 = v34;
  sub_1B720A388(v34, v33);
  sub_1B7800448();
  (*(v27 + 8))(v29, v26);
  v130 = v30;
  v131 = sub_1B720D66C(&qword_1EB98F940, MEMORY[0x1E69663E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);
  v37 = v122;
  (*(v122 + 16))(boxed_opaque_existential_1, v32, v30);
  __swift_project_boxed_opaque_existential_1(v127, v130);
  v38 = v123;
  sub_1B77FEDA8();
  (*(v37 + 8))(v32, v30);
  v39 = v125;
  v40 = v126;
  __swift_destroy_boxed_opaque_existential_1(v127);
  type metadata accessor for ManagedTransactionIcon();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v124.receiver = ObjCClassFromMetadata;
  v124.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedTransactionIcon;
  v42 = objc_msgSendSuper2(&v124, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B7807CD0;
  v44 = sub_1B77FF598();
  *(v43 + 56) = sub_1B7205540(0, &qword_1EDAF93D0);
  *(v43 + 64) = sub_1B720D718();
  *(v43 + 32) = v44;
  v45 = sub_1B78010E8();
  [v42 setPredicate_];

  v46 = v132;
  result = sub_1B7801498();
  if (v38)
  {

    sub_1B720A388(v39, v40);
    return ObjCClassFromMetadata;
  }

  v123 = v42;
  v49 = v118;
  v48 = v119;
  v95 = 0;
  v50 = v117;
  v122 = v40;
  if (result >> 62)
  {
    v93 = v39;
    v94 = result;
    v51 = sub_1B7801958();
    result = v94;
    v39 = v93;
    v46 = v132;
  }

  else
  {
    v51 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = v39;
  if (!v51)
  {

    v54 = objc_allocWithZone(ObjCClassFromMetadata);
    ObjCClassFromMetadata = [v54 initWithContext_];
    v55 = sub_1B77FF598();
    [ObjCClassFromMetadata setData_];

    v56 = sub_1B77FF598();
    [ObjCClassFromMetadata setDataHash_];

    v57 = v99;
    [ObjCClassFromMetadata setWidth_];
    LODWORD(v56) = v98;
    [ObjCClassFromMetadata setHeight_];
    [ObjCClassFromMetadata setSourceValue_];

    v127[0] = v48;
    v127[1] = v49;
    v128 = v57;
    v129 = v56;
    LOBYTE(v130) = v50;
    v131 = v97;
    v58 = Transaction.Icon.backgroundColor.getter();
    if (v58)
    {
      v59 = v58;
      v60 = objc_allocWithZone(type metadata accessor for StorableColor());
      v61 = v59;
      v62 = StorableColor.init(color:)(v59);
      [ObjCClassFromMetadata setBackgroundColor_];
    }

    goto LABEL_11;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    ObjCClassFromMetadata = MEMORY[0x1B8CA5DC0](0, result);

LABEL_11:
    v52 = v120;
    v53 = v123;
    goto LABEL_12;
  }

  v52 = v120;
  v53 = v123;
  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  ObjCClassFromMetadata = *(result + 32);

LABEL_12:
  v63 = (v52 + 104);
  v64 = (v52 + 8);
  v65 = (v121 + 56);
  v66 = v50 > 1;
  v67 = v110;
  v68 = v112;
  if (!v66)
  {
    sub_1B77FF938();
    v69 = v111;
    v70 = v113;
    (*v63)(v111, *MEMORY[0x1E6969830], v113);
    v71 = v102;
    sub_1B77FFB18();
    (*v64)(v69, v70);
    v72 = v115;
    (*v65)(v114, 1, 1, v115);
    v73 = sub_1B77FFCF8();
    (*(*(v73 - 8) + 56))(v108, 1, 1, v73);
    v74 = v104;
    sub_1B77FECD8();
    v75 = v106;
    sub_1B77FFC08();
    v76 = v116;
    v77 = v109;
    result = (*(v116 + 48))(v75, 1, v109);
    if (result != 1)
    {
      sub_1B720D780(v74);
      (*(v121 + 8))(v71, v72);
      v78 = *(v76 + 8);
      v78(v68, v77);
      v79 = v100;
      (*(v76 + 32))(v100, v75, v77);
      v80 = sub_1B77FF8B8();
      v78(v79, v77);
      v53 = v123;
LABEL_17:
      [ObjCClassFromMetadata setExpiryDate_];
      sub_1B720A388(v96, v122);

      return ObjCClassFromMetadata;
    }

    goto LABEL_22;
  }

  sub_1B77FF938();
  v81 = v111;
  v82 = v113;
  (*v63)(v111, *MEMORY[0x1E6969830], v113);
  v83 = v103;
  sub_1B77FFB18();
  (*v64)(v81, v82);
  v84 = v115;
  (*v65)(v114, 1, 1, v115);
  v85 = sub_1B77FFCF8();
  (*(*(v85 - 8) + 56))(v108, 1, 1, v85);
  v86 = v105;
  sub_1B77FECD8();
  v87 = v107;
  sub_1B77FFC08();
  v88 = v116;
  v89 = v109;
  result = (*(v116 + 48))(v87, 1, v109);
  if (result != 1)
  {
    sub_1B720D780(v86);
    (*(v121 + 8))(v83, v84);
    v90 = *(v88 + 8);
    v90(v67, v89);
    v91 = v89;
    v92 = v101;
    (*(v88 + 32))(v101, v87, v91);
    v80 = sub_1B77FF8B8();
    v90(v92, v91);
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

void keypath_setTm(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1B77FF598();
  [v6 *a5];
}

uint64_t sub_1B720D5A8(uint64_t a1)
{
  v5 = sub_1B7519C30(a1);
  sub_1B720B9C8(&v5);
  v1 = v5;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!sub_1B7801958())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8CA5DC0](0, v1);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B720D66C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1B720D718()
{
  result = qword_1EB98F948;
  if (!qword_1EB98F948)
  {
    sub_1B7205540(255, &qword_1EDAF93D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F948);
  }

  return result;
}