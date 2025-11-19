@interface CNLabeledValue
@end

@implementation CNLabeledValue

void __56__CNLabeledValue_UIAdditions__builtinLabelsForProperty___block_invoke()
{
  v25[5] = *MEMORY[0x1E69E9840];
  v24[0] = *MEMORY[0x1E695C330];
  v1 = *MEMORY[0x1E695CBD8];
  v23[0] = *MEMORY[0x1E695CB60];
  v0 = v23[0];
  v23[1] = v1;
  v2 = *MEMORY[0x1E695CB70];
  v23[2] = *MEMORY[0x1E695CBC0];
  v23[3] = v2;
  v3 = *MEMORY[0x1E695CB88];
  v23[4] = *MEMORY[0x1E695CB90];
  v23[5] = v3;
  v4 = *MEMORY[0x1E695CBB8];
  v23[6] = *MEMORY[0x1E695CB78];
  v23[7] = v4;
  v5 = *MEMORY[0x1E695CB68];
  v23[8] = *MEMORY[0x1E695CBA0];
  v23[9] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:10];
  v25[0] = v6;
  v24[1] = *MEMORY[0x1E695C208];
  v22[0] = v0;
  v22[1] = v1;
  v22[2] = *MEMORY[0x1E695CB58];
  v22[3] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v25[1] = v7;
  v24[2] = *MEMORY[0x1E695C418];
  v21[0] = *MEMORY[0x1E695CBD0];
  v21[1] = v0;
  v21[2] = v1;
  v21[3] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v25[2] = v8;
  v24[3] = *MEMORY[0x1E695C1F0];
  v20[0] = *MEMORY[0x1E695CB50];
  v20[1] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v25[3] = v9;
  v24[4] = *MEMORY[0x1E695C3A8];
  v10 = *MEMORY[0x1E695C720];
  v19[0] = *MEMORY[0x1E695C870];
  v19[1] = v10;
  v11 = *MEMORY[0x1E695C540];
  v19[2] = *MEMORY[0x1E695C8F8];
  v19[3] = v11;
  v12 = *MEMORY[0x1E695C9C0];
  v19[4] = *MEMORY[0x1E695C970];
  v19[5] = v12;
  v13 = *MEMORY[0x1E695C590];
  v19[6] = *MEMORY[0x1E695C658];
  v19[7] = v13;
  v14 = *MEMORY[0x1E695C9E0];
  v19[8] = *MEMORY[0x1E695C760];
  v19[9] = v14;
  v15 = *MEMORY[0x1E695C4C0];
  v19[10] = *MEMORY[0x1E695C950];
  v19[11] = v15;
  v19[12] = *MEMORY[0x1E695C868];
  v19[13] = v5;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];
  v25[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v18 = builtinLabelsForProperty__labelsForProperty;
  builtinLabelsForProperty__labelsForProperty = v17;
}

void __44__CNLabeledValue_UIAdditions__defaultLabels__block_invoke()
{
  v15[26] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695CB60];
  v15[0] = *MEMORY[0x1E695CB68];
  v15[1] = v0;
  v1 = *MEMORY[0x1E695CBC0];
  v15[2] = *MEMORY[0x1E695CBD8];
  v15[3] = v1;
  v2 = *MEMORY[0x1E695CB90];
  v15[4] = *MEMORY[0x1E695CB70];
  v15[5] = v2;
  v3 = *MEMORY[0x1E695CB78];
  v15[6] = *MEMORY[0x1E695CB88];
  v15[7] = v3;
  v4 = *MEMORY[0x1E695CBA0];
  v15[8] = *MEMORY[0x1E695CBB8];
  v15[9] = v4;
  v5 = *MEMORY[0x1E695CBD0];
  v15[10] = *MEMORY[0x1E695CB58];
  v15[11] = v5;
  v6 = *MEMORY[0x1E695C720];
  v15[12] = *MEMORY[0x1E695CB50];
  v15[13] = v6;
  v7 = *MEMORY[0x1E695C8F8];
  v15[14] = *MEMORY[0x1E695C870];
  v15[15] = v7;
  v8 = *MEMORY[0x1E695C970];
  v15[16] = *MEMORY[0x1E695C540];
  v15[17] = v8;
  v9 = *MEMORY[0x1E695C658];
  v15[18] = *MEMORY[0x1E695C9C0];
  v15[19] = v9;
  v10 = *MEMORY[0x1E695C760];
  v15[20] = *MEMORY[0x1E695C590];
  v15[21] = v10;
  v11 = *MEMORY[0x1E695C950];
  v15[22] = *MEMORY[0x1E695C9E0];
  v15[23] = v11;
  v12 = *MEMORY[0x1E695C868];
  v15[24] = *MEMORY[0x1E695C4C0];
  v15[25] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:26];
  v14 = defaultLabels_labels;
  defaultLabels_labels = v13;
}

ABAddressBookRef __42__CNLabeledValue_UIAdditions__addressBook__block_invoke()
{
  result = ABAddressBookCreateWithOptions(0, 0);
  addressBook_ab = result;
  return result;
}

@end