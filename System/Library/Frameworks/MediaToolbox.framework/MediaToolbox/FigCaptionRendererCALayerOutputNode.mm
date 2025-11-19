@interface FigCaptionRendererCALayerOutputNode
@end

@implementation FigCaptionRendererCALayerOutputNode

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_AddChildNode_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) addSublayer:*(v3 + 8)];
  [MEMORY[0x1E6979518] commit];
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveChildNode_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) removeFromSuperlayer];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveAllChildNodes_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setSublayers:0];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPosition_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setPosition:{*(a1 + 40), *(a1 + 48)}];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSize_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetClipToBounds_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setMasksToBounds:*(a1 + 40) != 0];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetContent_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setContents:*(a1 + 40)];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetCornerRadius_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setCornerRadius:*(a1 + 40)];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetWindowOpacity_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setWindowOpacity:*(a1 + 40)];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetOptions_block_invoke(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setNodeOptions:a1[5] forKeyPath:a1[6]];
  [MEMORY[0x1E6979518] commit];
  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSeparated_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setNodeSeparated:*(a1 + 40) != 0];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPCTContextData_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(DerivedStorage + 8) setPCTContextData:*(a1 + 40)];
  [MEMORY[0x1E6979518] commit];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

@end