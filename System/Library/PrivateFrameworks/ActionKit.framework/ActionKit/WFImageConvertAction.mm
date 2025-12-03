@interface WFImageConvertAction
- (BOOL)preserveMetadataWithPreserveMetadata:(BOOL)metadata imageFormat:(id)format;
- (id)imageQualityWithQuality:(id)quality imageFormat:(id)format;
- (id)typeFromImageFormatString:(id)string;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFImageConvertAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__WFImageConvertAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [inputCopy generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __51__WFImageConvertAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = [*(a1 + 32) parameterValueForKey:@"WFImageFormat" ofClass:objc_opt_class()];
    v9 = [*(a1 + 32) parameterValueForKey:@"WFImageCompressionQuality" ofClass:objc_opt_class()];
    v10 = [*(a1 + 32) parameterValueForKey:@"WFImagePreserveMetadata" ofClass:objc_opt_class()];
    v11 = [v10 BOOLValue];

    v12 = [*(a1 + 32) typeFromImageFormatString:v8];
    v13 = [*(a1 + 32) imageQualityWithQuality:v9 imageFormat:v12];

    v14 = [*(a1 + 32) preserveMetadataWithPreserveMetadata:v11 imageFormat:v12];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__WFImageConvertAction_runAsynchronouslyWithInput___block_invoke_2;
    v18[3] = &unk_278C1B8D8;
    v21 = v14;
    v19 = v12;
    v20 = v13;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__WFImageConvertAction_runAsynchronouslyWithInput___block_invoke_3;
    v17[3] = &unk_278C21E70;
    v17[4] = *(a1 + 32);
    v15 = v13;
    v16 = v12;
    [v6 transformItemsUsingBlock:v18 completionHandler:v17];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __51__WFImageConvertAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [a2 generateImageFileForType:v5 includingMetadata:v4 compressionQuality:v6 error:0];
  v7[2](v7, v8, 0);
}

void __51__WFImageConvertAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

- (BOOL)preserveMetadataWithPreserveMetadata:(BOOL)metadata imageFormat:(id)format
{
  metadataCopy = metadata;
  formatCopy = format;
  v6 = formatCopy;
  if (formatCopy && ([formatCopy conformsToUTType:*MEMORY[0x277CE1DC0]] & 1) == 0 && (objc_msgSend(v6, "conformsToUTType:", *MEMORY[0x277CE1E10]) & 1) == 0 && (objc_msgSend(v6, "conformsToUTType:", *MEMORY[0x277CE1E80]) & 1) == 0)
  {
    metadataCopy &= [v6 conformsToUTType:*MEMORY[0x277CE1D90]];
  }

  return metadataCopy;
}

- (id)imageQualityWithQuality:(id)quality imageFormat:(id)format
{
  qualityCopy = quality;
  if ([format conformsToUTType:*MEMORY[0x277CE1DC0]])
  {
    v6 = qualityCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)typeFromImageFormatString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"JPEG"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"JPEG-2000"))
  {
    v4 = MEMORY[0x277CE1DC0];
LABEL_4:
    v5 = [MEMORY[0x277D79F68] typeWithUTType:*v4];
    goto LABEL_5;
  }

  if ([stringCopy isEqualToString:@"PNG"])
  {
    v4 = MEMORY[0x277CE1E10];
    goto LABEL_4;
  }

  if ([stringCopy isEqualToString:@"TIFF"])
  {
    v4 = MEMORY[0x277CE1E80];
    goto LABEL_4;
  }

  if ([stringCopy isEqualToString:@"GIF"])
  {
    v4 = MEMORY[0x277CE1D88];
    goto LABEL_4;
  }

  if ([stringCopy isEqualToString:@"BMP"])
  {
    v4 = MEMORY[0x277CE1D10];
    goto LABEL_4;
  }

  if ([stringCopy isEqualToString:@"PDF"])
  {
    v4 = MEMORY[0x277CE1E08];
    goto LABEL_4;
  }

  if ([stringCopy isEqualToString:@"HEIF"])
  {
    v4 = MEMORY[0x277CE1D90];
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

@end